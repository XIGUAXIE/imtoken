.class public abstract Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;
.super Ljava/lang/Object;
.source "BaseDynaBeanMapDecorator.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final dynaBean:Lorg/apache/commons/beanutils/DynaBean;

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final readOnly:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/beanutils/DynaBean;)V
    .locals 1

    const/4 v0, 0x1

    .line 68
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;-><init>(Lorg/apache/commons/beanutils/DynaBean;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/DynaBean;Z)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 83
    iput-object p1, p0, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->dynaBean:Lorg/apache/commons/beanutils/DynaBean;

    .line 84
    iput-boolean p2, p0, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->readOnly:Z

    return-void

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DynaBean is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;
    .locals 1

    .line 332
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaBean()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    return-object v0
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaBean()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v0

    .line 122
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 6

    .line 136
    invoke-direct {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    .line 137
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 138
    invoke-virtual {v4}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaBean()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    if-nez p1, :cond_0

    if-nez v4, :cond_1

    return v5

    .line 145
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method protected abstract convertKey(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation
.end method

.method public entrySet()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    .line 165
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 166
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 167
    invoke-virtual {v4}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->convertKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 168
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaBean()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 169
    new-instance v6, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;

    invoke-direct {v6, v5, v4}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaBean()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDynaBean()Lorg/apache/commons/beanutils/DynaBean;
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->dynaBean:Lorg/apache/commons/beanutils/DynaBean;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 193
    invoke-direct {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->readOnly:Z

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    .line 213
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    .line 214
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 215
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 216
    invoke-virtual {v4}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->convertKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaBean()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v1

    .line 222
    instance-of v1, v1, Lorg/apache/commons/beanutils/MutableDynaClass;

    if-nez v1, :cond_2

    .line 223
    iput-object v0, p0, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->keySet:Ljava/util/Set;

    :cond_2
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaBean()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 246
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaBean()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 242
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Map is read only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 258
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 262
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void

    .line 259
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Map is read only"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 274
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    .line 283
    invoke-direct {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 293
    invoke-direct {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 296
    invoke-virtual {v4}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BaseDynaBeanMapDecorator;->getDynaBean()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 298
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 300
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
