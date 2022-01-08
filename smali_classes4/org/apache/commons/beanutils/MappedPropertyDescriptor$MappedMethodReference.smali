.class Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;
.super Ljava/lang/Object;
.source "MappedPropertyDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/beanutils/MappedPropertyDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MappedMethodReference"
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private classRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private methodName:Ljava/lang/String;

.field private methodRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private writeParamClassNames:[Ljava/lang/String;

.field private writeParamTypeRef0:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private writeParamTypeRef1:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 5

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 434
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->className:Ljava/lang/String;

    .line 435
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->methodName:Ljava/lang/String;

    .line 436
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->methodRef:Ljava/lang/ref/Reference;

    .line 437
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->classRef:Ljava/lang/ref/Reference;

    .line 438
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    .line 439
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 440
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->writeParamTypeRef0:Ljava/lang/ref/Reference;

    .line 441
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x1

    aget-object v4, p1, v3

    invoke-direct {v0, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->writeParamTypeRef1:Ljava/lang/ref/Reference;

    new-array v0, v1, [Ljava/lang/String;

    .line 442
    iput-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->writeParamClassNames:[Ljava/lang/String;

    .line 443
    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 444
    iget-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->writeParamClassNames:[Ljava/lang/String;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;)Ljava/lang/reflect/Method;
    .locals 0

    .line 424
    invoke-direct {p0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->get()Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private get()Ljava/lang/reflect/Method;
    .locals 6

    .line 449
    iget-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->methodRef:Ljava/lang/ref/Reference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 452
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_6

    .line 454
    iget-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->classRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 456
    invoke-direct {p0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->reLoadClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 458
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->classRef:Ljava/lang/ref/Reference;

    :cond_1
    const-string v1, " for "

    const-string v2, "Method "

    if-eqz v0, :cond_5

    .line 466
    iget-object v3, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->writeParamClassNames:[Ljava/lang/String;

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    .line 468
    iget-object v4, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->writeParamTypeRef0:Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 469
    aget-object v4, v3, v5

    if-nez v4, :cond_2

    .line 470
    iget-object v4, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->writeParamClassNames:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->reLoadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v5

    .line 471
    aget-object v4, v3, v5

    if-eqz v4, :cond_2

    .line 472
    new-instance v4, Ljava/lang/ref/WeakReference;

    aget-object v5, v3, v5

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->writeParamTypeRef0:Ljava/lang/ref/Reference;

    .line 475
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->writeParamTypeRef1:Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 476
    aget-object v4, v3, v5

    if-nez v4, :cond_4

    .line 477
    iget-object v4, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->writeParamClassNames:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->reLoadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v5

    .line 478
    aget-object v4, v3, v5

    if-eqz v4, :cond_4

    .line 479
    new-instance v4, Ljava/lang/ref/WeakReference;

    aget-object v5, v3, v5

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->writeParamTypeRef1:Ljava/lang/ref/Reference;

    goto :goto_0

    .line 483
    :cond_3
    invoke-static {}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->access$100()[Ljava/lang/Class;

    move-result-object v3

    .line 486
    :cond_4
    :goto_0
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->methodRef:Ljava/lang/ref/Reference;

    goto :goto_1

    .line 490
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->methodName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->className:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " could not be reconstructed - method not found"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->methodName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->className:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " could not be reconstructed - class reference has gone"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    return-object v0
.end method

.method private reLoadClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->className:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor$MappedMethodReference;->reLoadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private reLoadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 510
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 522
    :catch_0
    :cond_0
    const-class v0, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 524
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method
