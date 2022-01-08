.class public Lorg/apache/commons/validator/ValidatorAction;
.super Ljava/lang/Object;
.source "ValidatorAction.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x12979e8318653e75L


# instance fields
.field private classname:Ljava/lang/String;

.field private final dependencyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private depends:Ljava/lang/String;

.field private instance:Ljava/lang/Object;

.field private javascript:Ljava/lang/String;

.field private jsFunction:Ljava/lang/String;

.field private jsFunctionName:Ljava/lang/String;

.field private transient log:Lorg/apache/commons/logging/Log;

.field private method:Ljava/lang/String;

.field private final methodParameterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private methodParams:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private parameterClasses:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private validationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private validationMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-class v0, Lorg/apache/commons/validator/ValidatorAction;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->log:Lorg/apache/commons/logging/Log;

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->name:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->classname:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->validationClass:Ljava/lang/Class;

    .line 75
    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->method:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->validationMethod:Ljava/lang/reflect/Method;

    const-string v1, "java.lang.Object,org.apache.commons.validator.ValidatorAction,org.apache.commons.validator.Field"

    .line 96
    iput-object v1, p0, Lorg/apache/commons/validator/ValidatorAction;->methodParams:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->parameterClasses:[Ljava/lang/Class;

    .line 113
    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->depends:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->msg:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->jsFunctionName:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->jsFunction:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->javascript:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->instance:Ljava/lang/Object;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->dependencyList:Ljava/util/List;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->methodParameterList:Ljava/util/List;

    return-void
.end method

.method private formatJavascriptFileName()Ljava/lang/String;
    .locals 4

    .line 450
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->jsFunction:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 452
    iget-object v1, p0, Lorg/apache/commons/validator/ValidatorAction;->jsFunction:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/validator/ValidatorAction;->jsFunction:Ljava/lang/String;

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".js"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private generateJsFunction()Ljava/lang/String;
    .locals 4

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "org.apache.commons.validator.javascript"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".validate"

    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    iget-object v1, p0, Lorg/apache/commons/validator/ValidatorAction;->name:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    iget-object v1, p0, Lorg/apache/commons/validator/ValidatorAction;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getClassLoader(Ljava/util/Map;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    const-string v0, "org.apache.commons.validator.Validator"

    .line 767
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/validator/Validator;

    .line 768
    invoke-virtual {p1}, Lorg/apache/commons/validator/Validator;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    return-object p1
.end method

.method private getLog()Lorg/apache/commons/logging/Log;
    .locals 1

    .line 791
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->log:Lorg/apache/commons/logging/Log;

    if-nez v0, :cond_0

    .line 792
    const-class v0, Lorg/apache/commons/validator/ValidatorAction;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->log:Lorg/apache/commons/logging/Log;

    .line 794
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method private getParameterValues(Ljava/util/Map;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 673
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->methodParameterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 675
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/validator/ValidatorAction;->methodParameterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 676
    iget-object v2, p0, Lorg/apache/commons/validator/ValidatorAction;->methodParameterList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 677
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getValidationClassInstance()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/ValidatorException;
        }
    .end annotation

    const-string v0, ".  "

    const-string v1, "Couldn\'t create instance of "

    .line 688
    iget-object v2, p0, Lorg/apache/commons/validator/ValidatorAction;->validationMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 689
    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->instance:Ljava/lang/Object;

    goto :goto_0

    .line 692
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/validator/ValidatorAction;->instance:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 694
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/validator/ValidatorAction;->validationClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/validator/ValidatorAction;->instance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/validator/ValidatorAction;->classname:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    new-instance v1, Lorg/apache/commons/validator/ValidatorException;

    invoke-direct {v1, v0}, Lorg/apache/commons/validator/ValidatorException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v2

    .line 696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/validator/ValidatorAction;->classname:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 702
    new-instance v1, Lorg/apache/commons/validator/ValidatorException;

    invoke-direct {v1, v0}, Lorg/apache/commons/validator/ValidatorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 716
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method private handleIndexedField(Lorg/apache/commons/validator/Field;I[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/ValidatorException;
        }
    .end annotation

    .line 729
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->methodParameterList:Ljava/util/List;

    const-string v1, "java.lang.Object"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 730
    iget-object v1, p0, Lorg/apache/commons/validator/ValidatorAction;->methodParameterList:Ljava/util/List;

    const-string v2, "org.apache.commons.validator.Field"

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 732
    aget-object v2, p3, v0

    invoke-virtual {p1, v2}, Lorg/apache/commons/validator/Field;->getIndexedProperty(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 735
    aget-object v2, v2, p2

    aput-object v2, p3, v0

    .line 739
    invoke-virtual {p1}, Lorg/apache/commons/validator/Field;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/validator/Field;

    .line 740
    invoke-virtual {p1}, Lorg/apache/commons/validator/Field;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "[]"

    invoke-static {v0, v2, p2}, Lorg/apache/commons/validator/util/ValidatorUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/validator/Field;->setKey(Ljava/lang/String;)V

    .line 746
    aput-object p1, p3, v1

    return-void
.end method

.method private isValid(Ljava/lang/Object;)Z
    .locals 1

    .line 755
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 756
    check-cast p1, Ljava/lang/Boolean;

    .line 757
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private javascriptAlreadyLoaded()Z
    .locals 1

    .line 463
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->javascript:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadParameterClasses(Ljava/lang/ClassLoader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/ValidatorException;
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->parameterClasses:[Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->methodParameterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 649
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/validator/ValidatorAction;->methodParameterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 650
    iget-object v2, p0, Lorg/apache/commons/validator/ValidatorAction;->methodParameterList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 653
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 656
    new-instance v0, Lorg/apache/commons/validator/ValidatorException;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/validator/ValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_1
    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->parameterClasses:[Ljava/lang/Class;

    return-void
.end method

.method private loadValidationClass(Ljava/lang/ClassLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/ValidatorException;
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->validationClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-void

    .line 627
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->classname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/validator/ValidatorAction;->validationClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 629
    new-instance v0, Lorg/apache/commons/validator/ValidatorException;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/validator/ValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadValidationMethod()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/ValidatorException;
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->validationMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    return-void

    .line 605
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->validationClass:Ljava/lang/Class;

    iget-object v1, p0, Lorg/apache/commons/validator/ValidatorAction;->method:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/validator/ValidatorAction;->parameterClasses:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->validationMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 609
    new-instance v1, Lorg/apache/commons/validator/ValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such validation method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/validator/ValidatorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private onlyReturnErrors(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "org.apache.commons.validator.Validator"

    .line 776
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/validator/Validator;

    .line 777
    invoke-virtual {p1}, Lorg/apache/commons/validator/Validator;->getOnlyReturnErrors()Z

    move-result p1

    return p1
.end method

.method private readJavascriptFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "Error closing stream to javascript file."

    .line 407
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_0

    .line 409
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 412
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    .line 414
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_1
    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 418
    invoke-direct {p0}, Lorg/apache/commons/validator/ValidatorAction;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Unable to read javascript name "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-object v2

    .line 422
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 426
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 427
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 435
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 437
    invoke-direct {p0}, Lorg/apache/commons/validator/ValidatorAction;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 431
    :try_start_2
    invoke-direct {p0}, Lorg/apache/commons/validator/ValidatorAction;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v4

    const-string v5, "Error reading javascript file."

    invoke-interface {v4, v5, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 435
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 441
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 442
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p1

    :goto_2
    return-object v2

    .line 435
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    .line 437
    invoke-direct {p0}, Lorg/apache/commons/validator/ValidatorAction;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 438
    :goto_4
    throw p1
.end method


# virtual methods
.method executeValidationMethod(Lorg/apache/commons/validator/Field;Ljava/util/Map;Lorg/apache/commons/validator/ValidatorResults;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/validator/Field;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/commons/validator/ValidatorResults;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/ValidatorException;
        }
    .end annotation

    const-string v0, "org.apache.commons.validator.ValidatorAction"

    .line 529
    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 532
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/validator/ValidatorAction;->validationMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 533
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 534
    :try_start_1
    invoke-direct {p0, p2}, Lorg/apache/commons/validator/ValidatorAction;->getClassLoader(Ljava/util/Map;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 535
    invoke-direct {p0, v1}, Lorg/apache/commons/validator/ValidatorAction;->loadValidationClass(Ljava/lang/ClassLoader;)V

    .line 536
    invoke-direct {p0, v1}, Lorg/apache/commons/validator/ValidatorAction;->loadParameterClasses(Ljava/lang/ClassLoader;)V

    .line 537
    invoke-direct {p0}, Lorg/apache/commons/validator/ValidatorAction;->loadValidationMethod()V

    .line 538
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2

    .line 541
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lorg/apache/commons/validator/ValidatorAction;->getParameterValues(Ljava/util/Map;)[Ljava/lang/Object;

    move-result-object v1

    .line 543
    invoke-virtual {p1}, Lorg/apache/commons/validator/Field;->isIndexed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 544
    invoke-direct {p0, p1, p4, v1}, Lorg/apache/commons/validator/ValidatorAction;->handleIndexedField(Lorg/apache/commons/validator/Field;I[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    const/4 p4, 0x0

    .line 549
    :try_start_3
    iget-object v2, p0, Lorg/apache/commons/validator/ValidatorAction;->validationMethod:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lorg/apache/commons/validator/ValidatorAction;->getValidationClassInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_0
    move-exception v1

    .line 560
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Exception;

    if-nez v2, :cond_6

    .line 563
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Error;

    if-nez v2, :cond_5

    .line 568
    :goto_1
    invoke-direct {p0, p4}, Lorg/apache/commons/validator/ValidatorAction;->isValid(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v1, :cond_3

    .line 569
    invoke-direct {p0, p2}, Lorg/apache/commons/validator/ValidatorAction;->onlyReturnErrors(Ljava/util/Map;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 570
    :cond_2
    iget-object p2, p0, Lorg/apache/commons/validator/ValidatorAction;->name:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v1, p4}, Lorg/apache/commons/validator/ValidatorResults;->add(Lorg/apache/commons/validator/Field;Ljava/lang/String;ZLjava/lang/Object;)V

    :cond_3
    if-nez v1, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x1

    return p1

    .line 564
    :cond_5
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Ljava/lang/Error;

    throw p2

    .line 561
    :cond_6
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Ljava/lang/Exception;

    throw p2

    :catch_1
    move-exception p2

    .line 557
    new-instance p4, Lorg/apache/commons/validator/ValidatorException;

    invoke-virtual {p2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2}, Lorg/apache/commons/validator/ValidatorException;-><init>(Ljava/lang/String;)V

    throw p4

    :catch_2
    move-exception p2

    .line 555
    new-instance p4, Lorg/apache/commons/validator/ValidatorException;

    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2}, Lorg/apache/commons/validator/ValidatorException;-><init>(Ljava/lang/String;)V

    throw p4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception p2

    .line 580
    instance-of p4, p2, Lorg/apache/commons/validator/ValidatorException;

    if-nez p4, :cond_7

    .line 584
    invoke-direct {p0}, Lorg/apache/commons/validator/ValidatorAction;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled exception thrown during validation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1, p2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 588
    iget-object p2, p0, Lorg/apache/commons/validator/ValidatorAction;->name:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lorg/apache/commons/validator/ValidatorResults;->add(Lorg/apache/commons/validator/Field;Ljava/lang/String;Z)V

    return v0

    .line 581
    :cond_7
    check-cast p2, Lorg/apache/commons/validator/ValidatorException;

    throw p2
.end method

.method public getClassname()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->classname:Ljava/lang/String;

    return-object v0
.end method

.method public getDependencyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->dependencyList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDepends()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->depends:Ljava/lang/String;

    return-object v0
.end method

.method public getJavascript()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->javascript:Ljava/lang/String;

    return-object v0
.end method

.method public getJsFunctionName()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->jsFunctionName:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodParams()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->methodParams:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .locals 0

    .line 359
    invoke-virtual {p0}, Lorg/apache/commons/validator/ValidatorAction;->loadJavascriptFunction()V

    return-void
.end method

.method public isDependency(Ljava/lang/String;)Z
    .locals 1

    .line 486
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->dependencyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected declared-synchronized loadJavascriptFunction()V
    .locals 4

    monitor-enter p0

    .line 375
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/validator/ValidatorAction;->javascriptAlreadyLoaded()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 376
    monitor-exit p0

    return-void

    .line 379
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/apache/commons/validator/ValidatorAction;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    invoke-direct {p0}, Lorg/apache/commons/validator/ValidatorAction;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v0

    const-string v1, "  Loading function begun"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 383
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->jsFunction:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 384
    invoke-direct {p0}, Lorg/apache/commons/validator/ValidatorAction;->generateJsFunction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->jsFunction:Ljava/lang/String;

    .line 387
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/validator/ValidatorAction;->formatJavascriptFileName()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-direct {p0}, Lorg/apache/commons/validator/ValidatorAction;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 390
    invoke-direct {p0}, Lorg/apache/commons/validator/ValidatorAction;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Loading js function \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 393
    :cond_3
    invoke-direct {p0, v0}, Lorg/apache/commons/validator/ValidatorAction;->readJavascriptFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->javascript:Ljava/lang/String;

    .line 395
    invoke-direct {p0}, Lorg/apache/commons/validator/ValidatorAction;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 396
    invoke-direct {p0}, Lorg/apache/commons/validator/ValidatorAction;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v0

    const-string v1, "  Loading javascript function completed"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setClassname(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lorg/apache/commons/validator/ValidatorAction;->classname:Ljava/lang/String;

    return-void
.end method

.method public setDepends(Ljava/lang/String;)V
    .locals 2

    .line 249
    iput-object p1, p0, Lorg/apache/commons/validator/ValidatorAction;->depends:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->dependencyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 253
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 255
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 258
    iget-object v1, p0, Lorg/apache/commons/validator/ValidatorAction;->dependencyList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setJavascript(Ljava/lang/String;)V
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->jsFunction:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 352
    iput-object p1, p0, Lorg/apache/commons/validator/ValidatorAction;->javascript:Ljava/lang/String;

    return-void

    .line 349
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call setJavascript() after calling setJsFunction()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setJsFunction(Ljava/lang/String;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->javascript:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 330
    iput-object p1, p0, Lorg/apache/commons/validator/ValidatorAction;->jsFunction:Ljava/lang/String;

    return-void

    .line 327
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call setJsFunction() after calling setJavascript()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setJsFunctionName(Ljava/lang/String;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lorg/apache/commons/validator/ValidatorAction;->jsFunctionName:Ljava/lang/String;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lorg/apache/commons/validator/ValidatorAction;->method:Ljava/lang/String;

    return-void
.end method

.method public setMethodParams(Ljava/lang/String;)V
    .locals 2

    .line 221
    iput-object p1, p0, Lorg/apache/commons/validator/ValidatorAction;->methodParams:Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorAction;->methodParameterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 225
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 227
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 230
    iget-object v1, p0, Lorg/apache/commons/validator/ValidatorAction;->methodParameterList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lorg/apache/commons/validator/ValidatorAction;->msg:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lorg/apache/commons/validator/ValidatorAction;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ValidatorAction: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lorg/apache/commons/validator/ValidatorAction;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
