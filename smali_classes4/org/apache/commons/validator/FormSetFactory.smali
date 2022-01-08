.class public Lorg/apache/commons/validator/FormSetFactory;
.super Lorg/apache/commons/digester/AbstractObjectCreationFactory;
.source "FormSetFactory.java"


# instance fields
.field private transient log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/apache/commons/digester/AbstractObjectCreationFactory;-><init>()V

    .line 33
    const-class v0, Lorg/apache/commons/validator/FormSetFactory;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/validator/FormSetFactory;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method private createFormSet(Lorg/apache/commons/validator/ValidatorResources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/validator/FormSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-virtual {p1, p2, p3, p4}, Lorg/apache/commons/validator/ValidatorResources;->getFormSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/validator/FormSet;

    move-result-object v0

    const-string v1, "FormSet["

    if-eqz v0, :cond_1

    .line 75
    invoke-direct {p0}, Lorg/apache/commons/validator/FormSetFactory;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    invoke-direct {p0}, Lorg/apache/commons/validator/FormSetFactory;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/validator/FormSet;->displayKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] found - merging."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    return-object v0

    .line 82
    :cond_1
    new-instance v0, Lorg/apache/commons/validator/FormSet;

    invoke-direct {v0}, Lorg/apache/commons/validator/FormSet;-><init>()V

    .line 83
    invoke-virtual {v0, p2}, Lorg/apache/commons/validator/FormSet;->setLanguage(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, p3}, Lorg/apache/commons/validator/FormSet;->setCountry(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, p4}, Lorg/apache/commons/validator/FormSet;->setVariant(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1, v0}, Lorg/apache/commons/validator/ValidatorResources;->addFormSet(Lorg/apache/commons/validator/FormSet;)V

    .line 90
    invoke-direct {p0}, Lorg/apache/commons/validator/FormSetFactory;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 91
    invoke-direct {p0}, Lorg/apache/commons/validator/FormSetFactory;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/validator/FormSet;->displayKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] created."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method private getLog()Lorg/apache/commons/logging/Log;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/commons/validator/FormSetFactory;->log:Lorg/apache/commons/logging/Log;

    if-nez v0, :cond_0

    .line 110
    const-class v0, Lorg/apache/commons/validator/FormSetFactory;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/validator/FormSetFactory;->log:Lorg/apache/commons/logging/Log;

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/validator/FormSetFactory;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method


# virtual methods
.method public createObject(Lorg/xml/sax/Attributes;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/apache/commons/validator/FormSetFactory;->digester:Lorg/apache/commons/digester/Digester;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/digester/Digester;->peek(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/validator/ValidatorResources;

    const-string v1, "language"

    .line 48
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "country"

    .line 49
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "variant"

    .line 50
    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-direct {p0, v0, v1, v2, p1}, Lorg/apache/commons/validator/FormSetFactory;->createFormSet(Lorg/apache/commons/validator/ValidatorResources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/validator/FormSet;

    move-result-object p1

    return-object p1
.end method
