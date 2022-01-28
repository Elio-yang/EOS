/*
 *
 * Created by ElioYang on 2022/1/28.
 * Email: jluelioyang2001@gmail.com
 *
 * MIT License
 * Copyright (c) 2021 Elio-yang
 *
 */

#ifndef EOS_DEV_ASMLINKAGE_H
#define EOS_DEV_ASMLINKAGE_H

#define CPP_ASMLINKAGE
#define asmlinkage CPP_ASMLINKAGE __attribute__((regparm(0)))

#endif //EOS_DEV_ASMLINKAGE_H
