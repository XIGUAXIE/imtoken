.class Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;
.super Lorg/apache/commons/digester/Rule;
.source "SetNestedPropertiesRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/digester/SetNestedPropertiesRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnyChildRule"
.end annotation


# instance fields
.field private currChildElementName:Ljava/lang/String;

.field private currChildNamespaceURI:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/commons/digester/SetNestedPropertiesRule;


# direct methods
.method private constructor <init>(Lorg/apache/commons/digester/SetNestedPropertiesRule;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->this$0:Lorg/apache/commons/digester/SetNestedPropertiesRule;

    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 p1, 0x0

    .line 388
    iput-object p1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->currChildNamespaceURI:Ljava/lang/String;

    .line 389
    iput-object p1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->currChildElementName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/digester/SetNestedPropertiesRule;Lorg/apache/commons/digester/SetNestedPropertiesRule$1;)V
    .locals 0

    .line 387
    invoke-direct {p0, p1}, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;-><init>(Lorg/apache/commons/digester/SetNestedPropertiesRule;)V

    return-void
.end method


# virtual methods
.method public begin(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 395
    iput-object p1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->currChildNamespaceURI:Ljava/lang/String;

    .line 396
    iput-object p2, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->currChildElementName:Ljava/lang/String;

    return-void
.end method

.method public body(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->currChildElementName:Ljava/lang/String;

    .line 402
    iget-object v1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->this$0:Lorg/apache/commons/digester/SetNestedPropertiesRule;

    invoke-static {v1}, Lorg/apache/commons/digester/SetNestedPropertiesRule;->access$200(Lorg/apache/commons/digester/SetNestedPropertiesRule;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->currChildElementName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    iget-object v0, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->this$0:Lorg/apache/commons/digester/SetNestedPropertiesRule;

    invoke-static {v0}, Lorg/apache/commons/digester/SetNestedPropertiesRule;->access$200(Lorg/apache/commons/digester/SetNestedPropertiesRule;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->currChildElementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 411
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->this$0:Lorg/apache/commons/digester/SetNestedPropertiesRule;

    invoke-static {v1}, Lorg/apache/commons/digester/SetNestedPropertiesRule;->access$100(Lorg/apache/commons/digester/SetNestedPropertiesRule;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    const-string v2, "[SetNestedPropertiesRule]{"

    if-eqz v1, :cond_1

    .line 414
    iget-object v3, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->this$0:Lorg/apache/commons/digester/SetNestedPropertiesRule;

    invoke-static {v3}, Lorg/apache/commons/digester/SetNestedPropertiesRule;->access$100(Lorg/apache/commons/digester/SetNestedPropertiesRule;)Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v5, v5, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "} Setting property \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' to \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 420
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v3}, Lorg/apache/commons/digester/Digester;->peek()Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_3

    if-eqz v3, :cond_2

    .line 423
    iget-object v1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->this$0:Lorg/apache/commons/digester/SetNestedPropertiesRule;

    invoke-static {v1}, Lorg/apache/commons/digester/SetNestedPropertiesRule;->access$100(Lorg/apache/commons/digester/SetNestedPropertiesRule;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v2, v2, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "} Set "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " properties"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 427
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->this$0:Lorg/apache/commons/digester/SetNestedPropertiesRule;

    invoke-static {v1}, Lorg/apache/commons/digester/SetNestedPropertiesRule;->access$100(Lorg/apache/commons/digester/SetNestedPropertiesRule;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SetPropertiesRule]{"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v4, v4, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "} Set NULL properties"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 432
    :cond_3
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->this$0:Lorg/apache/commons/digester/SetNestedPropertiesRule;

    invoke-static {v1}, Lorg/apache/commons/digester/SetNestedPropertiesRule;->access$300(Lorg/apache/commons/digester/SetNestedPropertiesRule;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 433
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 436
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->this$0:Lorg/apache/commons/digester/SetNestedPropertiesRule;

    invoke-static {v1}, Lorg/apache/commons/digester/SetNestedPropertiesRule;->access$400(Lorg/apache/commons/digester/SetNestedPropertiesRule;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 439
    instance-of v1, v3, Lorg/apache/commons/beanutils/DynaBean;

    const-string v2, "Bean has no property named "

    if-eqz v1, :cond_6

    .line 440
    move-object v1, v3

    check-cast v1, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 443
    :cond_5
    new-instance p1, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 447
    :cond_6
    invoke-static {v3, v0}, Lorg/apache/commons/beanutils/PropertyUtils;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v1

    if-eqz v1, :cond_7

    goto :goto_1

    .line 450
    :cond_7
    new-instance p1, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 458
    :cond_8
    :goto_1
    :try_start_0
    invoke-static {v3, v0, p1}, Lorg/apache/commons/beanutils/BeanUtils;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 461
    iget-object v2, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->this$0:Lorg/apache/commons/digester/SetNestedPropertiesRule;

    invoke-static {v2}, Lorg/apache/commons/digester/SetNestedPropertiesRule;->access$100(Lorg/apache/commons/digester/SetNestedPropertiesRule;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NullPointerException: top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",propName="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",value="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 463
    throw v1
.end method

.method public end(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    .line 469
    iput-object p1, p0, Lorg/apache/commons/digester/SetNestedPropertiesRule$AnyChildRule;->currChildElementName:Ljava/lang/String;

    return-void
.end method
