.class public Lorg/apache/commons/digester/CallMethodRule;
.super Lorg/apache/commons/digester/Rule;
.source "CallMethodRule.java"


# instance fields
.field protected bodyText:Ljava/lang/String;

.field protected methodName:Ljava/lang/String;

.field private paramClassNames:[Ljava/lang/String;

.field protected paramCount:I

.field protected paramTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected targetOffset:I

.field protected useExactMatch:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 237
    check-cast v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/apache/commons/digester/CallMethodRule;-><init>(ILjava/lang/String;I[Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 2

    .line 196
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x0

    .line 380
    iput-object v0, p0, Lorg/apache/commons/digester/CallMethodRule;->bodyText:Ljava/lang/String;

    const/4 v1, 0x0

    .line 388
    iput v1, p0, Lorg/apache/commons/digester/CallMethodRule;->targetOffset:I

    .line 393
    iput-object v0, p0, Lorg/apache/commons/digester/CallMethodRule;->methodName:Ljava/lang/String;

    .line 401
    iput v1, p0, Lorg/apache/commons/digester/CallMethodRule;->paramCount:I

    .line 407
    iput-object v0, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    .line 413
    iput-object v0, p0, Lorg/apache/commons/digester/CallMethodRule;->paramClassNames:[Ljava/lang/String;

    .line 418
    iput-boolean v1, p0, Lorg/apache/commons/digester/CallMethodRule;->useExactMatch:Z

    .line 198
    iput p1, p0, Lorg/apache/commons/digester/CallMethodRule;->targetOffset:I

    .line 199
    iput-object p2, p0, Lorg/apache/commons/digester/CallMethodRule;->methodName:Ljava/lang/String;

    .line 200
    iput p3, p0, Lorg/apache/commons/digester/CallMethodRule;->paramCount:I

    if-nez p3, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Class;

    .line 202
    const-class p2, Ljava/lang/String;

    aput-object p2, p1, v1

    iput-object p1, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    goto :goto_1

    .line 204
    :cond_0
    new-array p1, p3, [Ljava/lang/Class;

    iput-object p1, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    .line 205
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    array-length p2, p1

    if-ge v1, p2, :cond_1

    .line 206
    const-class p2, Ljava/lang/String;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I[Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 354
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x0

    .line 380
    iput-object v0, p0, Lorg/apache/commons/digester/CallMethodRule;->bodyText:Ljava/lang/String;

    const/4 v1, 0x0

    .line 388
    iput v1, p0, Lorg/apache/commons/digester/CallMethodRule;->targetOffset:I

    .line 393
    iput-object v0, p0, Lorg/apache/commons/digester/CallMethodRule;->methodName:Ljava/lang/String;

    .line 401
    iput v1, p0, Lorg/apache/commons/digester/CallMethodRule;->paramCount:I

    .line 407
    iput-object v0, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    .line 413
    iput-object v0, p0, Lorg/apache/commons/digester/CallMethodRule;->paramClassNames:[Ljava/lang/String;

    .line 418
    iput-boolean v1, p0, Lorg/apache/commons/digester/CallMethodRule;->useExactMatch:Z

    .line 356
    iput p1, p0, Lorg/apache/commons/digester/CallMethodRule;->targetOffset:I

    .line 357
    iput-object p2, p0, Lorg/apache/commons/digester/CallMethodRule;->methodName:Ljava/lang/String;

    .line 358
    iput p3, p0, Lorg/apache/commons/digester/CallMethodRule;->paramCount:I

    if-nez p4, :cond_0

    .line 360
    new-array p1, p3, [Ljava/lang/Class;

    iput-object p1, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    .line 361
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    array-length p2, p1

    if-ge v1, p2, :cond_1

    .line 362
    const-class p2, Ljava/lang/String;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    :cond_0
    array-length p1, p4

    new-array p1, p1, [Ljava/lang/Class;

    iput-object p1, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    .line 366
    :goto_1
    iget-object p1, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    array-length p2, p1

    if-ge v1, p2, :cond_1

    .line 367
    aget-object p2, p4, v1

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I[Ljava/lang/String;)V
    .locals 2

    .line 286
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x0

    .line 380
    iput-object v0, p0, Lorg/apache/commons/digester/CallMethodRule;->bodyText:Ljava/lang/String;

    const/4 v1, 0x0

    .line 388
    iput v1, p0, Lorg/apache/commons/digester/CallMethodRule;->targetOffset:I

    .line 393
    iput-object v0, p0, Lorg/apache/commons/digester/CallMethodRule;->methodName:Ljava/lang/String;

    .line 401
    iput v1, p0, Lorg/apache/commons/digester/CallMethodRule;->paramCount:I

    .line 407
    iput-object v0, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    .line 413
    iput-object v0, p0, Lorg/apache/commons/digester/CallMethodRule;->paramClassNames:[Ljava/lang/String;

    .line 418
    iput-boolean v1, p0, Lorg/apache/commons/digester/CallMethodRule;->useExactMatch:Z

    .line 288
    iput p1, p0, Lorg/apache/commons/digester/CallMethodRule;->targetOffset:I

    .line 289
    iput-object p2, p0, Lorg/apache/commons/digester/CallMethodRule;->methodName:Ljava/lang/String;

    .line 290
    iput p3, p0, Lorg/apache/commons/digester/CallMethodRule;->paramCount:I

    if-nez p4, :cond_0

    .line 292
    new-array p1, p3, [Ljava/lang/Class;

    iput-object p1, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    .line 293
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    array-length p2, p1

    if-ge v1, p2, :cond_1

    .line 294
    const-class p2, Ljava/lang/String;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_0
    array-length p1, p4

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/digester/CallMethodRule;->paramClassNames:[Ljava/lang/String;

    .line 300
    :goto_1
    iget-object p1, p0, Lorg/apache/commons/digester/CallMethodRule;->paramClassNames:[Ljava/lang/String;

    array-length p2, p1

    if-ge v1, p2, :cond_1

    .line 301
    aget-object p2, p4, v1

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 220
    check-cast v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v1, v0}, Lorg/apache/commons/digester/CallMethodRule;-><init>(ILjava/lang/String;I[Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/digester/CallMethodRule;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 328
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/digester/CallMethodRule;-><init>(ILjava/lang/String;I[Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 261
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/digester/CallMethodRule;-><init>(ILjava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/Digester;Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/digester/CallMethodRule;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/Digester;Ljava/lang/String;I[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/digester/Digester;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/commons/digester/CallMethodRule;-><init>(Ljava/lang/String;I[Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/Digester;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/commons/digester/CallMethodRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public begin(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 473
    iget p1, p0, Lorg/apache/commons/digester/CallMethodRule;->paramCount:I

    if-lez p1, :cond_1

    .line 474
    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const/4 v2, 0x0

    .line 476
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/digester/CallMethodRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {p1, v0}, Lorg/apache/commons/digester/Digester;->pushParams(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public body(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 492
    iget v0, p0, Lorg/apache/commons/digester/CallMethodRule;->paramCount:I

    if-nez v0, :cond_0

    .line 493
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/digester/CallMethodRule;->bodyText:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public end()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 507
    iget v0, p0, Lorg/apache/commons/digester/CallMethodRule;->paramCount:I

    const-string v1, ")"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_1

    .line 509
    iget-object v0, p0, Lorg/apache/commons/digester/CallMethodRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v0}, Lorg/apache/commons/digester/Digester;->popParams()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 511
    iget-object v4, p0, Lorg/apache/commons/digester/CallMethodRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v4, v4, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 512
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    .line 513
    iget-object v6, p0, Lorg/apache/commons/digester/CallMethodRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v6, v6, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CallMethodRule]("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 527
    :cond_0
    iget v4, p0, Lorg/apache/commons/digester/CallMethodRule;->paramCount:I

    if-ne v4, v2, :cond_5

    aget-object v2, v0, v3

    if-nez v2, :cond_5

    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    if-eqz v0, :cond_4

    array-length v4, v0

    if-eqz v4, :cond_4

    .line 538
    iget-object v4, p0, Lorg/apache/commons/digester/CallMethodRule;->bodyText:Ljava/lang/String;

    if-nez v4, :cond_2

    return-void

    :cond_2
    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v3

    .line 544
    array-length v0, v0

    if-nez v0, :cond_3

    new-array v0, v2, [Ljava/lang/Class;

    .line 545
    iput-object v0, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    .line 546
    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v3

    :cond_3
    move-object v0, v5

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 558
    :cond_5
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    array-length v2, v2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 559
    :goto_2
    iget-object v6, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    array-length v7, v6

    if-ge v5, v7, :cond_8

    .line 562
    aget-object v7, v0, v5

    if-eqz v7, :cond_7

    aget-object v7, v0, v5

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_6

    const-class v7, Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_3

    .line 570
    :cond_6
    aget-object v6, v0, v5

    aput-object v6, v4, v5

    goto :goto_4

    .line 567
    :cond_7
    :goto_3
    aget-object v6, v0, v5

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    aget-object v7, v7, v5

    invoke-static {v6, v7}, Lorg/apache/commons/beanutils/ConvertUtils;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 576
    :cond_8
    iget v0, p0, Lorg/apache/commons/digester/CallMethodRule;->targetOffset:I

    if-ltz v0, :cond_9

    .line 577
    iget-object v0, p0, Lorg/apache/commons/digester/CallMethodRule;->digester:Lorg/apache/commons/digester/Digester;

    iget v5, p0, Lorg/apache/commons/digester/CallMethodRule;->targetOffset:I

    invoke-virtual {v0, v5}, Lorg/apache/commons/digester/Digester;->peek(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    .line 579
    :cond_9
    iget-object v0, p0, Lorg/apache/commons/digester/CallMethodRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v5, p0, Lorg/apache/commons/digester/CallMethodRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v5}, Lorg/apache/commons/digester/Digester;->getCount()I

    move-result v5

    iget v6, p0, Lorg/apache/commons/digester/CallMethodRule;->targetOffset:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lorg/apache/commons/digester/Digester;->peek(I)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    const-string v5, "[CallMethodRule]{"

    if-eqz v0, :cond_10

    .line 596
    iget-object v6, p0, Lorg/apache/commons/digester/CallMethodRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v6, v6, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 597
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 598
    iget-object v5, p0, Lorg/apache/commons/digester/CallMethodRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v5, v5, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "} Call "

    .line 599
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "."

    .line 601
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    iget-object v5, p0, Lorg/apache/commons/digester/CallMethodRule;->methodName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "("

    .line 603
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_6
    if-ge v3, v2, :cond_d

    if-lez v3, :cond_a

    const-string v5, ","

    .line 606
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 608
    :cond_a
    aget-object v5, v4, v3

    const-string v7, "null"

    if-nez v5, :cond_b

    .line 609
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 611
    :cond_b
    aget-object v5, v4, v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_7
    const-string v5, "/"

    .line 613
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    iget-object v5, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    aget-object v8, v5, v3

    if-nez v8, :cond_c

    .line 615
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 617
    :cond_c
    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 620
    :cond_d
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 621
    iget-object v1, p0, Lorg/apache/commons/digester/CallMethodRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v1, v1, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 625
    :cond_e
    iget-boolean v1, p0, Lorg/apache/commons/digester/CallMethodRule;->useExactMatch:Z

    if-eqz v1, :cond_f

    .line 627
    iget-object v1, p0, Lorg/apache/commons/digester/CallMethodRule;->methodName:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    invoke-static {v0, v1, v4, v2}, Lorg/apache/commons/beanutils/MethodUtils;->invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    .line 632
    :cond_f
    iget-object v1, p0, Lorg/apache/commons/digester/CallMethodRule;->methodName:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    invoke-static {v0, v1, v4, v2}, Lorg/apache/commons/beanutils/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 636
    :goto_9
    invoke-virtual {p0, v0}, Lorg/apache/commons/digester/CallMethodRule;->processMethodCallResult(Ljava/lang/Object;)V

    return-void

    .line 583
    :cond_10
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 584
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    iget-object v2, p0, Lorg/apache/commons/digester/CallMethodRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v2, v2, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "} Call target is null ("

    .line 586
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "targetOffset="

    .line 587
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 588
    iget v2, p0, Lorg/apache/commons/digester/CallMethodRule;->targetOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ",stackdepth="

    .line 589
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 590
    iget-object v2, p0, Lorg/apache/commons/digester/CallMethodRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v2}, Lorg/apache/commons/digester/Digester;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 592
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 646
    iput-object v0, p0, Lorg/apache/commons/digester/CallMethodRule;->bodyText:Ljava/lang/String;

    return-void
.end method

.method public getUseExactMatch()Z
    .locals 1

    .line 427
    iget-boolean v0, p0, Lorg/apache/commons/digester/CallMethodRule;->useExactMatch:Z

    return v0
.end method

.method protected processMethodCallResult(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setDigester(Lorg/apache/commons/digester/Digester;)V
    .locals 5

    .line 447
    invoke-super {p0, p1}, Lorg/apache/commons/digester/Rule;->setDigester(Lorg/apache/commons/digester/Digester;)V

    .line 449
    iget-object v0, p0, Lorg/apache/commons/digester/CallMethodRule;->paramClassNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 450
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    const/4 v0, 0x0

    .line 451
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/digester/CallMethodRule;->paramClassNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 453
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    invoke-virtual {p1}, Lorg/apache/commons/digester/Digester;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/digester/CallMethodRule;->paramClassNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 457
    invoke-virtual {p1}, Lorg/apache/commons/digester/Digester;->getLogger()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(CallMethodRule) Cannot load class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/commons/digester/CallMethodRule;->paramClassNames:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 458
    iget-object v1, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUseExactMatch(Z)V
    .locals 0

    .line 436
    iput-boolean p1, p0, Lorg/apache/commons/digester/CallMethodRule;->useExactMatch:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 666
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CallMethodRule["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "methodName="

    .line 667
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 668
    iget-object v1, p0, Lorg/apache/commons/digester/CallMethodRule;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", paramCount="

    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 670
    iget v1, p0, Lorg/apache/commons/digester/CallMethodRule;->paramCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", paramTypes={"

    .line 671
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 672
    iget-object v1, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 673
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    .line 675
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 677
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/digester/CallMethodRule;->paramTypes:[Ljava/lang/Class;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "}"

    .line 680
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    .line 681
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
