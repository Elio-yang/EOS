/* 
 * list.h
 *
 * Created by ElioYang on 2022/2/11.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */

#ifndef EOS_DEV_LIST_H
#define EOS_DEV_LIST_H

#include "interrupt.h"
#include "system.h"


#define LIST_POISON1  ((void *) 0x00100100)
#define LIST_POISON2  ((void *) 0x00200200)


struct list_entry {
        struct list_entry *prev;
        struct list_entry *next;
};

/*
 * head and tail are stable
 * the first element in list is head->next
 * the last element in list is tail->prev
 *
 * */
struct list {
        struct list_entry head;
        struct list_entry tail;
};

#define LIST_FIRST(dlist) ((dlist)->head.next)
#define LIST_LAST(dlist)  ((dlist)->tail.prev)
#define LIST_HEAD(dlist)  &((dlist)->head)
#define LIST_TAIL(dlist)  &((dlist)->tail)
/* used for callback function type */
typedef bool (callback_t)(struct list_entry *, int arg);

static inline void list_init(struct list *list) {
        list->head.prev = NULL;
        list->head.next = &list->tail;
        list->tail.prev = &list->head;
        list->tail.next = NULL;
}

/* add an element before entry_beforeme */
static inline void list_insert_before(struct list_entry *beforeme, struct list_entry *new) {
        enum interrupt_status old = interrupt_disable();
        // the prev one
        beforeme->prev->next = new;
        new->prev = beforeme->prev;
        new->next = beforeme;
        beforeme->prev = new;
        interrupt_set_status(old);
}

/* add in the head,make new the first elem */
static inline void list_insert_head(struct list *dlist, struct list_entry *new) {
        list_insert_before(dlist->head.next, new);
}

static inline void list_insert_tail(struct list *dlist, struct list_entry *new){
        list_insert_before(&dlist->tail,new);
}

/* remove this entry from the list */
static inline void list_remove(struct list_entry *entry){
        enum interrupt_status old = interrupt_disable();

        struct list_entry * enext = entry->next;
        struct list_entry * eprev = entry->prev;

        eprev->next = enext;
        enext->prev = eprev;
        interrupt_set_status(old);
}

static inline struct list_entry* list_first(struct list *dlist){
        struct list_entry * entry = dlist->head.next;
        list_remove(entry);
        return entry;
}

static inline bool list_find(struct list *dlist,struct list_entry *entry){
        struct list_entry * first = dlist->head.next;
        while(entry != &dlist->tail){
                if(entry == first){
                        return true;
                }
                first=first->next;
        }
        return false;
}

static inline bool list_empty(struct list* dlist){
        return LIST_FIRST(dlist)== LIST_TAIL(dlist) ? true : false;
}

/* use callback to traversal the list */
static inline struct list_entry* list_traversal(struct list *dlist, callback_t func,int arg){
        struct list_entry * ele = LIST_FIRST(dlist);
        if(list_empty(dlist)){
                return NULL;
        }
        while(ele != LIST_TAIL(dlist)){
                if(func(ele,arg)){
                        return ele;
                }
                ele = ele->next;
        }
        return NULL;
}

static inline uint32_t list_len(struct list *dlist){
        uint32_t len = 0;
        struct list_entry * entry = LIST_FIRST(dlist);
        while(entry!= LIST_TAIL(dlist)){
                len++;
                entry=entry->next;
        }
        return len;
}
#endif //EOS_DEV_LIST_H
