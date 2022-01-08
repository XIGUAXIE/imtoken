.class public Lorg/apache/commons/digester/FactoryCreateRule;
.super Lorg/apache/commons/digester/Rule;
.source "FactoryCreateRule.java"


# instance fields
.field protected attributeName:Ljava/lang/String;

.field protected className:Ljava/lang/String;

.field protected creationFactory:Lorg/apache/commons/digester/ObjectCreationFactory;

.field private exceptionIgnoredStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreCreateExceptions:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/digester/FactoryCreateRule;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/digester/FactoryCreateRule;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 311
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/digester/FactoryCreateRule;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 265
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/digester/FactoryCreateRule;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/digester/FactoryCreateRule;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/digester/FactoryCreateRule;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 285
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x0

    .line 338
    iput-object v0, p0, Lorg/apache/commons/digester/FactoryCreateRule;->attributeName:Ljava/lang/String;

    .line 345
    iput-object v0, p0, Lorg/apache/commons/digester/FactoryCreateRule;->className:Ljava/lang/String;

    .line 353
    iput-object v0, p0, Lorg/apache/commons/digester/FactoryCreateRule;->creationFactory:Lorg/apache/commons/digester/ObjectCreationFactory;

    .line 287
    iput-object p1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->className:Ljava/lang/String;

    .line 288
    iput-object p2, p0, Lorg/apache/commons/digester/FactoryCreateRule;->attributeName:Ljava/lang/String;

    .line 289
    iput-boolean p3, p0, Lorg/apache/commons/digester/FactoryCreateRule;->ignoreCreateExceptions:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 248
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/digester/FactoryCreateRule;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/Digester;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/digester/Digester;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-direct {p0, p2}, Lorg/apache/commons/digester/FactoryCreateRule;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/Digester;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/digester/Digester;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/digester/FactoryCreateRule;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/Digester;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-direct {p0, p2}, Lorg/apache/commons/digester/FactoryCreateRule;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/Digester;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/digester/FactoryCreateRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/Digester;Lorg/apache/commons/digester/ObjectCreationFactory;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    invoke-direct {p0, p2}, Lorg/apache/commons/digester/FactoryCreateRule;-><init>(Lorg/apache/commons/digester/ObjectCreationFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/ObjectCreationFactory;)V
    .locals 1

    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/digester/FactoryCreateRule;-><init>(Lorg/apache/commons/digester/ObjectCreationFactory;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/ObjectCreationFactory;Z)V
    .locals 1

    .line 326
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x0

    .line 338
    iput-object v0, p0, Lorg/apache/commons/digester/FactoryCreateRule;->attributeName:Ljava/lang/String;

    .line 345
    iput-object v0, p0, Lorg/apache/commons/digester/FactoryCreateRule;->className:Ljava/lang/String;

    .line 353
    iput-object v0, p0, Lorg/apache/commons/digester/FactoryCreateRule;->creationFactory:Lorg/apache/commons/digester/ObjectCreationFactory;

    .line 328
    iput-object p1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->creationFactory:Lorg/apache/commons/digester/ObjectCreationFactory;

    .line 329
    iput-boolean p2, p0, Lorg/apache/commons/digester/FactoryCreateRule;->ignoreCreateExceptions:Z

    return-void
.end method


# virtual methods
.method public begin(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 367
    iget-boolean p1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->ignoreCreateExceptions:Z

    const-string p2, "null object"

    const-string v0, "} New "

    const-string v1, "[FactoryCreateRule]{"

    if-eqz p1, :cond_5

    .line 369
    iget-object p1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->exceptionIgnoredStack:Ljava/util/Stack;

    if-nez p1, :cond_0

    .line 370
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->exceptionIgnoredStack:Ljava/util/Stack;

    .line 374
    :cond_0
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/digester/FactoryCreateRule;->getFactory(Lorg/xml/sax/Attributes;)Lorg/apache/commons/digester/ObjectCreationFactory;

    move-result-object p1

    invoke-interface {p1, p3}, Lorg/apache/commons/digester/ObjectCreationFactory;->createObject(Lorg/xml/sax/Attributes;)Ljava/lang/Object;

    move-result-object p1

    .line 376
    iget-object p3, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object p3, p3, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 377
    iget-object p3, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object p3, p3, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v1, v1, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 381
    :cond_2
    iget-object p2, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {p2, p1}, Lorg/apache/commons/digester/Digester;->push(Ljava/lang/Object;)V

    .line 382
    iget-object p1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->exceptionIgnoredStack:Ljava/util/Stack;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 386
    iget-object p2, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object p2, p2, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 387
    iget-object p2, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object p2, p2, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[FactoryCreateRule] Create exception ignored: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 389
    iget-object p2, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object p2, p2, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 390
    iget-object p2, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object p2, p2, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string p3, "[FactoryCreateRule] Ignored exception:"

    invoke-interface {p2, p3, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 393
    :cond_4
    iget-object p1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->exceptionIgnoredStack:Ljava/util/Stack;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 397
    :cond_5
    invoke-virtual {p0, p3}, Lorg/apache/commons/digester/FactoryCreateRule;->getFactory(Lorg/xml/sax/Attributes;)Lorg/apache/commons/digester/ObjectCreationFactory;

    move-result-object p1

    invoke-interface {p1, p3}, Lorg/apache/commons/digester/ObjectCreationFactory;->createObject(Lorg/xml/sax/Attributes;)Ljava/lang/Object;

    move-result-object p1

    .line 399
    iget-object p3, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object p3, p3, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 400
    iget-object p3, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object p3, p3, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v1, v1, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 404
    :cond_7
    iget-object p2, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {p2, p1}, Lorg/apache/commons/digester/Digester;->push(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public end(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 417
    iget-boolean p1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->ignoreCreateExceptions:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->exceptionIgnoredStack:Ljava/util/Stack;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Stack;->empty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 422
    iget-object p1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->exceptionIgnoredStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 425
    iget-object p1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object p1, p1, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 426
    iget-object p1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object p1, p1, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string p2, "[FactoryCreateRule] No creation so no push so no pop"

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 432
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {p1}, Lorg/apache/commons/digester/Digester;->pop()Ljava/lang/Object;

    move-result-object p1

    .line 433
    iget-object p2, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object p2, p2, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 434
    iget-object p2, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object p2, p2, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FactoryCreateRule]{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v1, v1, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} Pop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lorg/apache/commons/digester/FactoryCreateRule;->attributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 448
    iput-object v0, p0, Lorg/apache/commons/digester/FactoryCreateRule;->creationFactory:Lorg/apache/commons/digester/ObjectCreationFactory;

    :cond_0
    return-void
.end method

.method protected getFactory(Lorg/xml/sax/Attributes;)Lorg/apache/commons/digester/ObjectCreationFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lorg/apache/commons/digester/FactoryCreateRule;->creationFactory:Lorg/apache/commons/digester/ObjectCreationFactory;

    if-nez v0, :cond_2

    .line 490
    iget-object v0, p0, Lorg/apache/commons/digester/FactoryCreateRule;->className:Ljava/lang/String;

    .line 491
    iget-object v1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->attributeName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 492
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v0, p1

    .line 497
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object p1, p1, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 498
    iget-object p1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object p1, p1, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FactoryCreateRule]{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v2, v2, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "} New factory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 501
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {p1}, Lorg/apache/commons/digester/Digester;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 502
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/digester/ObjectCreationFactory;

    iput-object p1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->creationFactory:Lorg/apache/commons/digester/ObjectCreationFactory;

    .line 504
    iget-object v0, p0, Lorg/apache/commons/digester/FactoryCreateRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-interface {p1, v0}, Lorg/apache/commons/digester/ObjectCreationFactory;->setDigester(Lorg/apache/commons/digester/Digester;)V

    .line 506
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->creationFactory:Lorg/apache/commons/digester/ObjectCreationFactory;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 460
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "FactoryCreateRule["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "className="

    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 462
    iget-object v1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", attributeName="

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    iget-object v1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->attributeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    iget-object v1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->creationFactory:Lorg/apache/commons/digester/ObjectCreationFactory;

    if-eqz v1, :cond_0

    const-string v1, ", creationFactory="

    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    iget-object v1, p0, Lorg/apache/commons/digester/FactoryCreateRule;->creationFactory:Lorg/apache/commons/digester/ObjectCreationFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, "]"

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
