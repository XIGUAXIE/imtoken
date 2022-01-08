.class public Lorg/apache/commons/beanutils/LazyDynaList;
.super Ljava/util/ArrayList;
.source "LazyDynaList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private elementDynaBeanType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private elementDynaClass:Lorg/apache/commons/beanutils/DynaClass;

.field private elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private transient wrapDynaClass:Lorg/apache/commons/beanutils/WrapDynaClass;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 205
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 227
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaList;->setElementType(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 238
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/DynaClass;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaList;->setElementDynaClass(Lorg/apache/commons/beanutils/DynaClass;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 3

    .line 249
    array-length v0, p1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 251
    invoke-virtual {p0, v2}, Lorg/apache/commons/beanutils/LazyDynaList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createDynaBeanForMapProperty(Ljava/lang/Object;)Lorg/apache/commons/beanutils/LazyDynaMap;
    .locals 1

    .line 707
    check-cast p1, Ljava/util/Map;

    .line 708
    new-instance v0, Lorg/apache/commons/beanutils/LazyDynaMap;

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/LazyDynaMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private getDynaClass()Lorg/apache/commons/beanutils/DynaClass;
    .locals 1

    .line 715
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaClass:Lorg/apache/commons/beanutils/DynaClass;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->wrapDynaClass:Lorg/apache/commons/beanutils/WrapDynaClass;

    :cond_0
    return-object v0
.end method

.method private growList(I)V
    .locals 2

    .line 607
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 611
    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->ensureCapacity(I)V

    .line 613
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_1

    const/4 v1, 0x0

    .line 614
    invoke-direct {p0, v1}, Lorg/apache/commons/beanutils/LazyDynaList;->transform(Ljava/lang/Object;)Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v1

    .line 615
    invoke-super {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private transform(Ljava/lang/Object;)Lorg/apache/commons/beanutils/DynaBean;
    .locals 3

    if-nez p1, :cond_2

    .line 643
    iget-object p1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    if-nez p1, :cond_0

    .line 644
    new-instance p1, Lorg/apache/commons/beanutils/LazyDynaClass;

    invoke-direct {p1}, Lorg/apache/commons/beanutils/LazyDynaClass;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaList;->setElementDynaClass(Lorg/apache/commons/beanutils/DynaClass;)V

    .line 648
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object p1

    if-nez p1, :cond_1

    .line 649
    iget-object p1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaList;->setElementType(Ljava/lang/Class;)V

    .line 654
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaClass;->newInstance()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object p1

    .line 655
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 657
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating DynaBean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-direct {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    const-class v0, Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 667
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaList;->createDynaBeanForMapProperty(Ljava/lang/Object;)Lorg/apache/commons/beanutils/LazyDynaMap;

    move-result-object p1

    goto :goto_0

    .line 668
    :cond_3
    const-class v0, Lorg/apache/commons/beanutils/DynaBean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 669
    check-cast p1, Lorg/apache/commons/beanutils/DynaBean;

    goto :goto_0

    .line 671
    :cond_4
    new-instance v0, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/WrapDynaBean;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    .line 674
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 679
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 680
    const-class v2, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 681
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/WrapDynaBean;->getInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    .line 682
    :cond_5
    const-class v2, Lorg/apache/commons/beanutils/LazyDynaMap;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 683
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/LazyDynaMap;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/LazyDynaMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 688
    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    if-eqz v0, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 689
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Element Type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t match other elements "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    return-object p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0

    .line 271
    invoke-direct {p0, p2}, Lorg/apache/commons/beanutils/LazyDynaList;->transform(Ljava/lang/Object;)Lorg/apache/commons/beanutils/DynaBean;

    move-result-object p2

    .line 273
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaList;->growList(I)V

    .line 275
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0

    .line 288
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaList;->transform(Ljava/lang/Object;)Lorg/apache/commons/beanutils/DynaBean;

    move-result-object p1

    .line 290
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 332
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 336
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v0

    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->ensureCapacity(I)V

    .line 341
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 342
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->transform(Ljava/lang/Object;)Lorg/apache/commons/beanutils/DynaBean;

    .line 345
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaList;->growList(I)V

    .line 348
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    .line 349
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->add(ILjava/lang/Object;)V

    move p1, v1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 303
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 307
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->ensureCapacity(I)V

    .line 309
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 310
    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 369
    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->growList(I)V

    .line 371
    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 389
    invoke-direct {p0, p2}, Lorg/apache/commons/beanutils/LazyDynaList;->transform(Ljava/lang/Object;)Lorg/apache/commons/beanutils/DynaBean;

    move-result-object p2

    add-int/lit8 v0, p1, 0x1

    .line 391
    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->growList(I)V

    .line 393
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setElementDynaClass(Lorg/apache/commons/beanutils/DynaClass;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 569
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 575
    :try_start_0
    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaClass;->newInstance()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaBeanType:Ljava/lang/Class;

    .line 577
    const-class v2, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    check-cast v0, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/WrapDynaBean;->getInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    .line 579
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/WrapDynaClass;

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->wrapDynaClass:Lorg/apache/commons/beanutils/WrapDynaClass;

    goto :goto_0

    .line 580
    :cond_0
    const-class v1, Lorg/apache/commons/beanutils/LazyDynaMap;

    iget-object v2, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaBeanType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 581
    check-cast v0, Lorg/apache/commons/beanutils/LazyDynaMap;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/LazyDynaMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    .line 582
    iput-object p1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaClass:Lorg/apache/commons/beanutils/DynaClass;

    goto :goto_0

    .line 584
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    .line 585
    iput-object p1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaClass:Lorg/apache/commons/beanutils/DynaClass;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 588
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating DynaBean from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 570
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Element DynaClass cannot be reset"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 566
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Element DynaClass is missing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElementType(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 516
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 517
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 518
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Element Type cannot be reset"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 521
    :cond_2
    :goto_1
    iput-object p1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    .line 526
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 535
    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->createDynaBeanForMapProperty(Ljava/lang/Object;)Lorg/apache/commons/beanutils/LazyDynaMap;

    move-result-object p1

    .line 536
    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaClass:Lorg/apache/commons/beanutils/DynaClass;

    goto :goto_2

    .line 537
    :cond_3
    const-class v1, Lorg/apache/commons/beanutils/DynaBean;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 538
    move-object p1, v0

    check-cast p1, Lorg/apache/commons/beanutils/DynaBean;

    .line 539
    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaClass:Lorg/apache/commons/beanutils/DynaClass;

    goto :goto_2

    .line 541
    :cond_4
    new-instance p1, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-direct {p1, v0}, Lorg/apache/commons/beanutils/WrapDynaBean;-><init>(Ljava/lang/Object;)V

    .line 542
    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/beanutils/WrapDynaClass;

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->wrapDynaClass:Lorg/apache/commons/beanutils/WrapDynaClass;

    .line 545
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaBeanType:Ljava/lang/Class;

    .line 548
    const-class v1, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 549
    check-cast p1, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {p1}, Lorg/apache/commons/beanutils/WrapDynaBean;->getInstance()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    goto :goto_3

    .line 550
    :cond_5
    const-class v0, Lorg/apache/commons/beanutils/LazyDynaMap;

    iget-object v1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaBeanType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 551
    check-cast p1, Lorg/apache/commons/beanutils/LazyDynaMap;

    invoke-virtual {p1}, Lorg/apache/commons/beanutils/LazyDynaMap;->getMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    :cond_6
    :goto_3
    return-void

    :catch_0
    move-exception v0

    .line 528
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 513
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Element Type is missing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 415
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    if-nez v0, :cond_0

    new-array v0, v1, [Lorg/apache/commons/beanutils/LazyDynaBean;

    return-object v0

    .line 419
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 420
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 421
    const-class v2, Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/LazyDynaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/beanutils/LazyDynaMap;

    invoke-virtual {v2}, Lorg/apache/commons/beanutils/LazyDynaMap;->getMap()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    .line 423
    :cond_1
    const-class v2, Lorg/apache/commons/beanutils/DynaBean;

    iget-object v3, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 424
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/LazyDynaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    .line 426
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/LazyDynaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {v2}, Lorg/apache/commons/beanutils/WrapDynaBean;->getInstance()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 443
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 444
    const-class v1, Lorg/apache/commons/beanutils/DynaBean;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 445
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 449
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 451
    array-length v1, p1

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_0

    .line 457
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    .line 461
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 463
    const-class v1, Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 464
    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/beanutils/LazyDynaMap;

    invoke-virtual {v1}, Lorg/apache/commons/beanutils/LazyDynaMap;->getMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    .line 465
    :cond_2
    const-class v1, Lorg/apache/commons/beanutils/DynaBean;

    iget-object v2, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 466
    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 468
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {v1}, Lorg/apache/commons/beanutils/WrapDynaBean;->getInstance()Ljava/lang/Object;

    move-result-object v1

    .line 470
    :goto_2
    invoke-static {p1, v0, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object p1

    .line 475
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid array type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - not compatible with \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementType:Ljava/lang/Class;

    .line 477
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 446
    :cond_6
    :goto_3
    invoke-super {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toDynaBeanArray()[Lorg/apache/commons/beanutils/DynaBean;
    .locals 3

    .line 491
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaBeanType:Ljava/lang/Class;

    if-nez v0, :cond_0

    new-array v0, v1, [Lorg/apache/commons/beanutils/LazyDynaBean;

    return-object v0

    .line 495
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaList;->elementDynaBeanType:Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/beanutils/DynaBean;

    check-cast v0, [Lorg/apache/commons/beanutils/DynaBean;

    .line 496
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 497
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/LazyDynaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/beanutils/DynaBean;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
