.class public Lorg/apache/commons/validator/Field;
.super Ljava/lang/Object;
.source "Field.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_ARG:Ljava/lang/String; = "org.apache.commons.validator.Field.DEFAULT"

.field protected static final TOKEN_END:Ljava/lang/String; = "}"

.field public static final TOKEN_INDEXED:Ljava/lang/String; = "[]"

.field protected static final TOKEN_START:Ljava/lang/String; = "${"

.field protected static final TOKEN_VAR:Ljava/lang/String; = "var:"

.field private static final serialVersionUID:J = -0x75ff790dffb23b39L


# instance fields
.field protected args:[Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/validator/Arg;",
            ">;"
        }
    .end annotation
.end field

.field protected clientValidation:Z

.field private final dependencyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected depends:Ljava/lang/String;

.field protected fieldOrder:I

.field protected hMsgs:Lorg/apache/commons/collections/FastHashMap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected hVars:Lorg/apache/commons/collections/FastHashMap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected indexedListProperty:Ljava/lang/String;

.field protected indexedProperty:Ljava/lang/String;

.field protected key:Ljava/lang/String;

.field protected page:I

.field protected property:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lorg/apache/commons/validator/Field;->property:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lorg/apache/commons/validator/Field;->indexedProperty:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lorg/apache/commons/validator/Field;->indexedListProperty:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lorg/apache/commons/validator/Field;->key:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lorg/apache/commons/validator/Field;->depends:Ljava/lang/String;

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lorg/apache/commons/validator/Field;->page:I

    const/4 v1, 0x1

    .line 115
    iput-boolean v1, p0, Lorg/apache/commons/validator/Field;->clientValidation:Z

    .line 120
    iput v0, p0, Lorg/apache/commons/validator/Field;->fieldOrder:I

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/validator/Field;->dependencyList:Ljava/util/List;

    .line 133
    new-instance v1, Lorg/apache/commons/collections/FastHashMap;

    invoke-direct {v1}, Lorg/apache/commons/collections/FastHashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/validator/Field;->hVars:Lorg/apache/commons/collections/FastHashMap;

    .line 139
    new-instance v1, Lorg/apache/commons/collections/FastHashMap;

    invoke-direct {v1}, Lorg/apache/commons/collections/FastHashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/validator/Field;->hMsgs:Lorg/apache/commons/collections/FastHashMap;

    new-array v0, v0, [Ljava/util/Map;

    .line 148
    iput-object v0, p0, Lorg/apache/commons/validator/Field;->args:[Ljava/util/Map;

    return-void
.end method

.method private determineArgPosition(Lorg/apache/commons/validator/Arg;)V
    .locals 7

    .line 359
    invoke-virtual {p1}, Lorg/apache/commons/validator/Arg;->getPosition()I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/validator/Field;->args:[Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 374
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/validator/Arg;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "org.apache.commons.validator.Field.DEFAULT"

    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/validator/Arg;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 377
    :goto_1
    iget-object v5, p0, Lorg/apache/commons/validator/Field;->args:[Ljava/util/Map;

    array-length v6, v5

    if-ge v1, v6, :cond_5

    .line 378
    aget-object v6, v5, v1

    if-eqz v6, :cond_3

    aget-object v5, v5, v1

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v1

    .line 381
    :cond_3
    iget-object v5, p0, Lorg/apache/commons/validator/Field;->args:[Ljava/util/Map;

    aget-object v6, v5, v1

    if-eqz v6, :cond_4

    aget-object v5, v5, v1

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v4, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-gez v3, :cond_6

    move v3, v4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 391
    invoke-virtual {p1, v3}, Lorg/apache/commons/validator/Arg;->setPosition(I)V

    return-void

    .line 368
    :cond_7
    :goto_2
    invoke-virtual {p1, v1}, Lorg/apache/commons/validator/Arg;->setPosition(I)V

    return-void
.end method

.method private ensureArgsCapacity(Lorg/apache/commons/validator/Arg;)V
    .locals 3

    .line 402
    invoke-virtual {p1}, Lorg/apache/commons/validator/Arg;->getPosition()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/validator/Field;->args:[Ljava/util/Map;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 404
    invoke-virtual {p1}, Lorg/apache/commons/validator/Arg;->getPosition()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Ljava/util/Map;

    .line 405
    iget-object v0, p0, Lorg/apache/commons/validator/Field;->args:[Ljava/util/Map;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    iput-object p1, p0, Lorg/apache/commons/validator/Field;->args:[Ljava/util/Map;

    :cond_0
    return-void
.end method

.method private getIndexedPropertySize(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/ValidatorException;
        }
    .end annotation

    .line 790
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->getIndexedListProperty()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/beanutils/PropertyUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 799
    :cond_0
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 800
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    return p1

    .line 801
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 802
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    array-length p1, p1

    return p1

    .line 804
    :cond_2
    new-instance p1, Lorg/apache/commons/validator/ValidatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not indexed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/validator/ValidatorException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 794
    :goto_0
    new-instance v0, Lorg/apache/commons/validator/ValidatorException;

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/validator/ValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleMissingAction(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/ValidatorException;
        }
    .end annotation

    .line 934
    new-instance v0, Lorg/apache/commons/validator/ValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No ValidatorAction named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " found for field "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->getProperty()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/validator/ValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processArg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 644
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/validator/Field;->args:[Ljava/util/Map;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 646
    aget-object v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    .line 651
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 652
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 653
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/validator/Arg;

    if-eqz v2, :cond_1

    .line 656
    invoke-virtual {v2}, Lorg/apache/commons/validator/Arg;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lorg/apache/commons/validator/util/ValidatorUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/validator/Arg;->setKey(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private processMessageComponents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "${var:"

    .line 629
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->getMsgMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/validator/Msg;

    .line 632
    invoke-virtual {v1}, Lorg/apache/commons/validator/Msg;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lorg/apache/commons/validator/util/ValidatorUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/validator/Msg;->setKey(Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/validator/Field;->processArg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private processVars(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 613
    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->getVarMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 614
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 616
    invoke-virtual {p0, v1}, Lorg/apache/commons/validator/Field;->getVar(Ljava/lang/String;)Lorg/apache/commons/validator/Var;

    move-result-object v1

    .line 618
    invoke-virtual {v1}, Lorg/apache/commons/validator/Var;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lorg/apache/commons/validator/util/ValidatorUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/validator/Var;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private runDependentValidators(Lorg/apache/commons/validator/ValidatorAction;Lorg/apache/commons/validator/ValidatorResults;Ljava/util/Map;Ljava/util/Map;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/validator/ValidatorAction;",
            "Lorg/apache/commons/validator/ValidatorResults;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/validator/ValidatorAction;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/ValidatorException;
        }
    .end annotation

    .line 852
    invoke-virtual {p1}, Lorg/apache/commons/validator/ValidatorAction;->getDependencyList()Ljava/util/List;

    move-result-object p1

    .line 854
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 858
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 859
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 860
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 862
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/apache/commons/validator/ValidatorAction;

    if-nez v4, :cond_2

    .line 864
    invoke-direct {p0, v0}, Lorg/apache/commons/validator/Field;->handleMissingAction(Ljava/lang/String;)V

    :cond_2
    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    .line 867
    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/validator/Field;->validateForRule(Lorg/apache/commons/validator/ValidatorAction;Lorg/apache/commons/validator/ValidatorResults;Ljava/util/Map;Ljava/util/Map;I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_3
    return v1
.end method

.method private validateForRule(Lorg/apache/commons/validator/ValidatorAction;Lorg/apache/commons/validator/ValidatorResults;Ljava/util/Map;Ljava/util/Map;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/validator/ValidatorAction;",
            "Lorg/apache/commons/validator/ValidatorResults;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/validator/ValidatorAction;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/ValidatorException;
        }
    .end annotation

    .line 822
    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/commons/validator/ValidatorResults;->getValidatorResult(Ljava/lang/String;)Lorg/apache/commons/validator/ValidatorResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 823
    invoke-virtual {p1}, Lorg/apache/commons/validator/ValidatorAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/validator/ValidatorResult;->containsAction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 824
    invoke-virtual {p1}, Lorg/apache/commons/validator/ValidatorAction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/validator/ValidatorResult;->isValid(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 827
    :cond_0
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/validator/Field;->runDependentValidators(Lorg/apache/commons/validator/ValidatorAction;Lorg/apache/commons/validator/ValidatorResults;Ljava/util/Map;Ljava/util/Map;I)Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p1, 0x0

    return p1

    .line 831
    :cond_1
    invoke-virtual {p1, p0, p4, p2, p5}, Lorg/apache/commons/validator/ValidatorAction;->executeValidationMethod(Lorg/apache/commons/validator/Field;Ljava/util/Map;Lorg/apache/commons/validator/ValidatorResults;I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public addArg(Lorg/apache/commons/validator/Arg;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 333
    invoke-virtual {p1}, Lorg/apache/commons/validator/Arg;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/validator/Arg;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/validator/Field;->determineArgPosition(Lorg/apache/commons/validator/Arg;)V

    .line 338
    invoke-direct {p0, p1}, Lorg/apache/commons/validator/Field;->ensureArgsCapacity(Lorg/apache/commons/validator/Arg;)V

    .line 340
    iget-object v0, p0, Lorg/apache/commons/validator/Field;->args:[Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/commons/validator/Arg;->getPosition()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 343
    iget-object v1, p0, Lorg/apache/commons/validator/Field;->args:[Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/commons/validator/Arg;->getPosition()I

    move-result v2

    aput-object v0, v1, v2

    .line 346
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/validator/Arg;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "org.apache.commons.validator.Field.DEFAULT"

    .line 347
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/validator/Arg;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public addMsg(Lorg/apache/commons/validator/Msg;)V
    .locals 2

    .line 271
    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->getMsgMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/validator/Msg;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addVar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 479
    new-instance v0, Lorg/apache/commons/validator/Var;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/validator/Var;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/validator/Field;->addVar(Lorg/apache/commons/validator/Var;)V

    return-void
.end method

.method public addVar(Lorg/apache/commons/validator/Var;)V
    .locals 2

    .line 468
    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->getVarMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/validator/Var;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .line 689
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/validator/Field;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    iget-object v1, p0, Lorg/apache/commons/validator/Field;->args:[Ljava/util/Map;

    array-length v1, v1

    new-array v1, v1, [Ljava/util/Map;

    .line 696
    iput-object v1, v0, Lorg/apache/commons/validator/Field;->args:[Ljava/util/Map;

    const/4 v1, 0x0

    .line 697
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/validator/Field;->args:[Ljava/util/Map;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 698
    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_2

    .line 702
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lorg/apache/commons/validator/Field;->args:[Ljava/util/Map;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 703
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 704
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 705
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 706
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 707
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/validator/Arg;

    .line 708
    invoke-virtual {v4}, Lorg/apache/commons/validator/Arg;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/validator/Arg;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 710
    :cond_1
    iget-object v3, v0, Lorg/apache/commons/validator/Field;->args:[Ljava/util/Map;

    aput-object v2, v3, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 713
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/validator/Field;->hVars:Lorg/apache/commons/collections/FastHashMap;

    invoke-static {v1}, Lorg/apache/commons/validator/util/ValidatorUtils;->copyFastHashMap(Lorg/apache/commons/collections/FastHashMap;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/validator/Field;->hVars:Lorg/apache/commons/collections/FastHashMap;

    .line 714
    iget-object v1, p0, Lorg/apache/commons/validator/Field;->hMsgs:Lorg/apache/commons/collections/FastHashMap;

    invoke-static {v1}, Lorg/apache/commons/validator/util/ValidatorUtils;->copyFastHashMap(Lorg/apache/commons/collections/FastHashMap;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/validator/Field;->hMsgs:Lorg/apache/commons/collections/FastHashMap;

    return-object v0

    :catch_0
    move-exception v0

    .line 691
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public generateKey()V
    .locals 2

    .line 551
    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->isIndexed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/validator/Field;->indexedListProperty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/validator/Field;->property:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/validator/Field;->key:Ljava/lang/String;

    goto :goto_0

    .line 554
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/validator/Field;->property:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/validator/Field;->key:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public getArg(I)Lorg/apache/commons/validator/Arg;
    .locals 1

    const-string v0, "org.apache.commons.validator.Field.DEFAULT"

    .line 417
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/validator/Field;->getArg(Ljava/lang/String;I)Lorg/apache/commons/validator/Arg;

    move-result-object p1

    return-object p1
.end method

.method public getArg(Ljava/lang/String;I)Lorg/apache/commons/validator/Arg;
    .locals 3

    .line 431
    iget-object v0, p0, Lorg/apache/commons/validator/Field;->args:[Ljava/util/Map;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p2, v1, :cond_3

    aget-object v1, v0, p2

    if-nez v1, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    aget-object v0, v0, p2

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/validator/Arg;

    if-nez v0, :cond_1

    const-string v1, "org.apache.commons.validator.Field.DEFAULT"

    .line 439
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v2

    :cond_1
    if-nez v0, :cond_2

    .line 443
    invoke-virtual {p0, p2}, Lorg/apache/commons/validator/Field;->getArg(I)Lorg/apache/commons/validator/Arg;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    return-object v2
.end method

.method public getArgs(Ljava/lang/String;)[Lorg/apache/commons/validator/Arg;
    .locals 3

    .line 454
    iget-object v0, p0, Lorg/apache/commons/validator/Field;->args:[Ljava/util/Map;

    array-length v0, v0

    new-array v0, v0, [Lorg/apache/commons/validator/Arg;

    const/4 v1, 0x0

    .line 456
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/validator/Field;->args:[Ljava/util/Map;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 457
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/validator/Field;->getArg(Ljava/lang/String;I)Lorg/apache/commons/validator/Arg;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
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

    .line 678
    iget-object v0, p0, Lorg/apache/commons/validator/Field;->dependencyList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDepends()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/apache/commons/validator/Field;->depends:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldOrder()I
    .locals 1

    .line 174
    iget v0, p0, Lorg/apache/commons/validator/Field;->fieldOrder:I

    return v0
.end method

.method public getIndexedListProperty()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/apache/commons/validator/Field;->indexedListProperty:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexedProperty()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/apache/commons/validator/Field;->indexedProperty:Ljava/lang/String;

    return-object v0
.end method

.method getIndexedProperty(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/ValidatorException;
        }
    .end annotation

    .line 761
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->getIndexedListProperty()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/beanutils/PropertyUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 769
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 771
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    return-object p1

    .line 775
    :cond_1
    new-instance p1, Lorg/apache/commons/validator/ValidatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not indexed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/validator/ValidatorException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 765
    :goto_0
    new-instance v0, Lorg/apache/commons/validator/ValidatorException;

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/validator/ValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 521
    iget-object v0, p0, Lorg/apache/commons/validator/Field;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 522
    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->generateKey()V

    .line 525
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/validator/Field;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;)Lorg/apache/commons/validator/Msg;
    .locals 1

    .line 291
    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->getMsgMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/validator/Msg;

    return-object p1
.end method

.method public getMessages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/validator/Msg;",
            ">;"
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->getMsgMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 280
    invoke-virtual {p0, p1}, Lorg/apache/commons/validator/Field;->getMessage(Ljava/lang/String;)Lorg/apache/commons/validator/Msg;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/validator/Msg;->getKey()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected getMsgMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/validator/Msg;",
            ">;"
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lorg/apache/commons/validator/Field;->hMsgs:Lorg/apache/commons/collections/FastHashMap;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 157
    iget v0, p0, Lorg/apache/commons/validator/Field;->page:I

    return v0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/apache/commons/validator/Field;->property:Ljava/lang/String;

    return-object v0
.end method

.method public getVar(Ljava/lang/String;)Lorg/apache/commons/validator/Var;
    .locals 1

    .line 488
    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->getVarMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/validator/Var;

    return-object p1
.end method

.method protected getVarMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/validator/Var;",
            ">;"
        }
    .end annotation

    .line 955
    iget-object v0, p0, Lorg/apache/commons/validator/Field;->hVars:Lorg/apache/commons/collections/FastHashMap;

    return-object v0
.end method

.method public getVarValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->getVarMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/validator/Var;

    if-eqz p1, :cond_0

    .line 501
    invoke-virtual {p1}, Lorg/apache/commons/validator/Var;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getVars()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/validator/Var;",
            ">;"
        }
    .end annotation

    .line 513
    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->getVarMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public isClientValidation()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Lorg/apache/commons/validator/Field;->clientValidation:Z

    return v0
.end method

.method public isDependency(Ljava/lang/String;)Z
    .locals 1

    .line 669
    iget-object v0, p0, Lorg/apache/commons/validator/Field;->dependencyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isIndexed()Z
    .locals 1

    .line 544
    iget-object v0, p0, Lorg/apache/commons/validator/Field;->indexedListProperty:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method process(Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lorg/apache/commons/validator/Field;->hMsgs:Lorg/apache/commons/collections/FastHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    .line 564
    iget-object v0, p0, Lorg/apache/commons/validator/Field;->hVars:Lorg/apache/commons/collections/FastHashMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    .line 566
    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->generateKey()V

    .line 569
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v2, "${"

    const-string v3, "}"

    if-eqz v0, :cond_0

    .line 570
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 571
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 572
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 573
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 575
    iget-object v3, p0, Lorg/apache/commons/validator/Field;->property:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Lorg/apache/commons/validator/util/ValidatorUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/validator/Field;->property:Ljava/lang/String;

    .line 577
    invoke-direct {p0, v2, v0}, Lorg/apache/commons/validator/Field;->processVars(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-direct {p0, v2, v0}, Lorg/apache/commons/validator/Field;->processMessageComponents(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 583
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 584
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 585
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 586
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 589
    iget-object v4, p0, Lorg/apache/commons/validator/Field;->property:Ljava/lang/String;

    invoke-static {v4, v0, p2}, Lorg/apache/commons/validator/util/ValidatorUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/validator/Field;->property:Ljava/lang/String;

    .line 591
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/validator/Field;->processVars(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/validator/Field;->processMessageComponents(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 597
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->getVarMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 598
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "${var:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-virtual {p0, p2}, Lorg/apache/commons/validator/Field;->getVar(Ljava/lang/String;)Lorg/apache/commons/validator/Var;

    move-result-object p2

    .line 601
    invoke-virtual {p2}, Lorg/apache/commons/validator/Var;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 603
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/validator/Field;->processMessageComponents(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 606
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/validator/Field;->hMsgs:Lorg/apache/commons/collections/FastHashMap;

    invoke-virtual {p1, v1}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    return-void
.end method

.method public setClientValidation(Z)V
    .locals 0

    .line 323
    iput-boolean p1, p0, Lorg/apache/commons/validator/Field;->clientValidation:Z

    return-void
.end method

.method public setDepends(Ljava/lang/String;)V
    .locals 2

    .line 252
    iput-object p1, p0, Lorg/apache/commons/validator/Field;->depends:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lorg/apache/commons/validator/Field;->dependencyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 256
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 258
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 261
    iget-object v1, p0, Lorg/apache/commons/validator/Field;->dependencyList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setFieldOrder(I)V
    .locals 0

    .line 182
    iput p1, p0, Lorg/apache/commons/validator/Field;->fieldOrder:I

    return-void
.end method

.method public setIndexedListProperty(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lorg/apache/commons/validator/Field;->indexedListProperty:Ljava/lang/String;

    return-void
.end method

.method public setIndexedProperty(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lorg/apache/commons/validator/Field;->indexedProperty:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lorg/apache/commons/validator/Field;->key:Ljava/lang/String;

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 166
    iput p1, p0, Lorg/apache/commons/validator/Field;->page:I

    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lorg/apache/commons/validator/Field;->property:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\tkey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/validator/Field;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t\tproperty = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/validator/Field;->property:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t\tindexedProperty = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/validator/Field;->indexedProperty:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t\tindexedListProperty = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/validator/Field;->indexedListProperty:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t\tdepends = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/validator/Field;->depends:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t\tpage = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/commons/validator/Field;->page:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t\tfieldOrder = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/commons/validator/Field;->fieldOrder:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    iget-object v1, p0, Lorg/apache/commons/validator/Field;->hVars:Lorg/apache/commons/collections/FastHashMap;

    if-eqz v1, :cond_0

    const-string v1, "\t\tVars:\n"

    .line 736
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->getVarMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 738
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "\t\t\t"

    .line 739
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "="

    .line 741
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->getVarMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 747
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/commons/validator/ValidatorResults;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/validator/ValidatorAction;",
            ">;)",
            "Lorg/apache/commons/validator/ValidatorResults;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/validator/ValidatorException;
        }
    .end annotation

    .line 889
    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->getDepends()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 890
    new-instance p1, Lorg/apache/commons/validator/ValidatorResults;

    invoke-direct {p1}, Lorg/apache/commons/validator/ValidatorResults;-><init>()V

    return-object p1

    .line 893
    :cond_0
    new-instance v0, Lorg/apache/commons/validator/ValidatorResults;

    invoke-direct {v0}, Lorg/apache/commons/validator/ValidatorResults;-><init>()V

    const-string v1, "java.lang.Object"

    .line 895
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 896
    invoke-virtual {p0}, Lorg/apache/commons/validator/Field;->isIndexed()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lorg/apache/commons/validator/Field;->getIndexedPropertySize(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    .line 901
    new-instance v9, Lorg/apache/commons/validator/ValidatorResults;

    invoke-direct {v9}, Lorg/apache/commons/validator/ValidatorResults;-><init>()V

    .line 902
    iget-object v10, p0, Lorg/apache/commons/validator/Field;->dependencyList:Ljava/util/List;

    monitor-enter v10

    .line 903
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/validator/Field;->dependencyList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 904
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 905
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 907
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/validator/ValidatorAction;

    if-nez v4, :cond_3

    .line 909
    invoke-direct {p0, v3}, Lorg/apache/commons/validator/Field;->handleMissingAction(Ljava/lang/String;)V

    :cond_3
    move-object v3, p0

    move-object v5, v9

    move-object v6, p2

    move-object v7, p1

    move v8, v2

    .line 912
    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/validator/Field;->validateForRule(Lorg/apache/commons/validator/ValidatorAction;Lorg/apache/commons/validator/ValidatorResults;Ljava/util/Map;Ljava/util/Map;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 916
    invoke-virtual {v0, v9}, Lorg/apache/commons/validator/ValidatorResults;->merge(Lorg/apache/commons/validator/ValidatorResults;)V

    .line 917
    monitor-exit v10

    return-object v0

    .line 920
    :cond_4
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    invoke-virtual {v0, v9}, Lorg/apache/commons/validator/ValidatorResults;->merge(Lorg/apache/commons/validator/ValidatorResults;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 920
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    return-object v0
.end method
