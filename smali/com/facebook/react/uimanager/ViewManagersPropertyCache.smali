.class Lcom/facebook/react/uimanager/ViewManagersPropertyCache;
.super Ljava/lang/Object;
.source "ViewManagersPropertyCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/ViewManagersPropertyCache$BoxedIntPropSetter;,
        Lcom/facebook/react/uimanager/ViewManagersPropertyCache$BoxedBooleanPropSetter;,
        Lcom/facebook/react/uimanager/ViewManagersPropertyCache$StringPropSetter;,
        Lcom/facebook/react/uimanager/ViewManagersPropertyCache$MapPropSetter;,
        Lcom/facebook/react/uimanager/ViewManagersPropertyCache$ArrayPropSetter;,
        Lcom/facebook/react/uimanager/ViewManagersPropertyCache$FloatPropSetter;,
        Lcom/facebook/react/uimanager/ViewManagersPropertyCache$BooleanPropSetter;,
        Lcom/facebook/react/uimanager/ViewManagersPropertyCache$DoublePropSetter;,
        Lcom/facebook/react/uimanager/ViewManagersPropertyCache$IntPropSetter;,
        Lcom/facebook/react/uimanager/ViewManagersPropertyCache$DynamicPropSetter;,
        Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;
    }
.end annotation


# static fields
.field private static final CLASS_PROPS_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final EMPTY_PROPS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache;->CLASS_PROPS_CACHE:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache;->EMPTY_PROPS_MAP:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .line 35
    sget-object v0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache;->CLASS_PROPS_CACHE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 36
    sget-object v0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache;->EMPTY_PROPS_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private static createPropSetter(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/reflect/Method;Ljava/lang/Class;)Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/uimanager/annotations/ReactProp;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;"
        }
    .end annotation

    .line 377
    const-class v0, Lcom/facebook/react/bridge/Dynamic;

    if-ne p2, v0, :cond_0

    .line 378
    new-instance p2, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$DynamicPropSetter;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$DynamicPropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/reflect/Method;)V

    return-object p2

    .line 379
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    .line 380
    new-instance p2, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$BooleanPropSetter;

    invoke-interface {p0}, Lcom/facebook/react/uimanager/annotations/ReactProp;->defaultBoolean()Z

    move-result v0

    invoke-direct {p2, p0, p1, v0}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$BooleanPropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/reflect/Method;Z)V

    return-object p2

    .line 381
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_2

    .line 382
    new-instance p2, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$IntPropSetter;

    invoke-interface {p0}, Lcom/facebook/react/uimanager/annotations/ReactProp;->defaultInt()I

    move-result v0

    invoke-direct {p2, p0, p1, v0}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$IntPropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/reflect/Method;I)V

    return-object p2

    .line 383
    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_3

    .line 384
    new-instance p2, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$FloatPropSetter;

    invoke-interface {p0}, Lcom/facebook/react/uimanager/annotations/ReactProp;->defaultFloat()F

    move-result v0

    invoke-direct {p2, p0, p1, v0}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$FloatPropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/reflect/Method;F)V

    return-object p2

    .line 385
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_4

    .line 386
    new-instance p2, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$DoublePropSetter;

    invoke-interface {p0}, Lcom/facebook/react/uimanager/annotations/ReactProp;->defaultDouble()D

    move-result-wide v0

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$DoublePropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/reflect/Method;D)V

    return-object p2

    .line 387
    :cond_4
    const-class v0, Ljava/lang/String;

    if-ne p2, v0, :cond_5

    .line 388
    new-instance p2, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$StringPropSetter;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$StringPropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/reflect/Method;)V

    return-object p2

    .line 389
    :cond_5
    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_6

    .line 390
    new-instance p2, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$BoxedBooleanPropSetter;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$BoxedBooleanPropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/reflect/Method;)V

    return-object p2

    .line 391
    :cond_6
    const-class v0, Ljava/lang/Integer;

    if-ne p2, v0, :cond_7

    .line 392
    new-instance p2, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$BoxedIntPropSetter;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$BoxedIntPropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/reflect/Method;)V

    return-object p2

    .line 393
    :cond_7
    const-class v0, Lcom/facebook/react/bridge/ReadableArray;

    if-ne p2, v0, :cond_8

    .line 394
    new-instance p2, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$ArrayPropSetter;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$ArrayPropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/reflect/Method;)V

    return-object p2

    .line 395
    :cond_8
    const-class v0, Lcom/facebook/react/bridge/ReadableMap;

    if-ne p2, v0, :cond_9

    .line 396
    new-instance p2, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$MapPropSetter;

    invoke-direct {p2, p0, p1}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$MapPropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/reflect/Method;)V

    return-object p2

    .line 398
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for method: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createPropSetters(Lcom/facebook/react/uimanager/annotations/ReactPropGroup;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/uimanager/annotations/ReactPropGroup;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;",
            ">;)V"
        }
    .end annotation

    .line 413
    invoke-interface {p0}, Lcom/facebook/react/uimanager/annotations/ReactPropGroup;->names()[Ljava/lang/String;

    move-result-object v0

    .line 414
    const-class v1, Lcom/facebook/react/bridge/Dynamic;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    .line 415
    :goto_0
    array-length p2, v0

    if-ge v2, p2, :cond_4

    .line 416
    aget-object p2, v0, v2

    new-instance v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$DynamicPropSetter;

    invoke-direct {v1, p0, p1, v2}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$DynamicPropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactPropGroup;Ljava/lang/reflect/Method;I)V

    invoke-interface {p3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 418
    :cond_0
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_1

    .line 419
    :goto_1
    array-length p2, v0

    if-ge v2, p2, :cond_4

    .line 420
    aget-object p2, v0, v2

    new-instance v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$IntPropSetter;

    invoke-interface {p0}, Lcom/facebook/react/uimanager/annotations/ReactPropGroup;->defaultInt()I

    move-result v3

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$IntPropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactPropGroup;Ljava/lang/reflect/Method;II)V

    invoke-interface {p3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 422
    :cond_1
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_2

    .line 423
    :goto_2
    array-length p2, v0

    if-ge v2, p2, :cond_4

    .line 424
    aget-object p2, v0, v2

    new-instance v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$FloatPropSetter;

    invoke-interface {p0}, Lcom/facebook/react/uimanager/annotations/ReactPropGroup;->defaultFloat()F

    move-result v3

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$FloatPropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactPropGroup;Ljava/lang/reflect/Method;IF)V

    invoke-interface {p3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 426
    :cond_2
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_3

    .line 427
    :goto_3
    array-length p2, v0

    if-ge v2, p2, :cond_4

    .line 428
    aget-object p2, v0, v2

    new-instance v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$DoublePropSetter;

    .line 429
    invoke-interface {p0}, Lcom/facebook/react/uimanager/annotations/ReactPropGroup;->defaultDouble()D

    move-result-wide v7

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$DoublePropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactPropGroup;Ljava/lang/reflect/Method;ID)V

    .line 428
    invoke-interface {p3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 431
    :cond_3
    const-class v1, Ljava/lang/Integer;

    if-ne p2, v1, :cond_5

    .line 432
    :goto_4
    array-length p2, v0

    if-ge v2, p2, :cond_4

    .line 433
    aget-object p2, v0, v2

    new-instance v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$BoxedIntPropSetter;

    invoke-direct {v1, p0, p1, v2}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$BoxedIntPropSetter;-><init>(Lcom/facebook/react/uimanager/annotations/ReactPropGroup;Ljava/lang/reflect/Method;I)V

    invoke-interface {p3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    return-void

    .line 436
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for method: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static extractPropSettersFromShadowNodeClassDefinition(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/uimanager/ReactShadowNode;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;",
            ">;)V"
        }
    .end annotation

    .line 499
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    .line 500
    const-class v5, Lcom/facebook/react/uimanager/annotations/ReactProp;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/uimanager/annotations/ReactProp;

    const-string v6, "#"

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    .line 502
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 503
    array-length v9, v8

    if-ne v9, v7, :cond_0

    .line 507
    invoke-interface {v5}, Lcom/facebook/react/uimanager/annotations/ReactProp;->name()Ljava/lang/String;

    move-result-object v9

    aget-object v8, v8, v2

    invoke-static {v5, v4, v8}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache;->createPropSetter(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/reflect/Method;Ljava/lang/Class;)Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;

    move-result-object v5

    invoke-interface {p1, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 504
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong number of args for prop setter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 510
    :cond_1
    :goto_1
    const-class v5, Lcom/facebook/react/uimanager/annotations/ReactPropGroup;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/uimanager/annotations/ReactPropGroup;

    if-eqz v5, :cond_4

    .line 512
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 513
    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 520
    aget-object v9, v8, v2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_2

    .line 527
    aget-object v6, v8, v7

    invoke-static {v5, v4, v6, p1}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache;->createPropSetters(Lcom/facebook/react/uimanager/annotations/ReactPropGroup;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/util/Map;)V

    goto :goto_2

    .line 521
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Second argument should be property index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 514
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong number of args for group prop setter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private static extractPropSettersFromViewManagerClassDefinition(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;",
            ">;)V"
        }
    .end annotation

    .line 448
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 449
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_7

    .line 450
    aget-object v3, v0, v2

    .line 451
    const-class v4, Lcom/facebook/react/uimanager/annotations/ReactProp;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/uimanager/annotations/ReactProp;

    const-string v5, "First param should be a view subclass to be updated: "

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, "#"

    if-eqz v4, :cond_2

    .line 453
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 454
    array-length v10, v9

    if-ne v10, v6, :cond_1

    .line 458
    const-class v10, Landroid/view/View;

    aget-object v11, v9, v1

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 465
    invoke-interface {v4}, Lcom/facebook/react/uimanager/annotations/ReactProp;->name()Ljava/lang/String;

    move-result-object v10

    aget-object v9, v9, v7

    invoke-static {v4, v3, v9}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache;->createPropSetter(Lcom/facebook/react/uimanager/annotations/ReactProp;Ljava/lang/reflect/Method;Ljava/lang/Class;)Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;

    move-result-object v4

    invoke-interface {p1, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 459
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 455
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong number of args for prop setter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 468
    :cond_2
    :goto_1
    const-class v4, Lcom/facebook/react/uimanager/annotations/ReactPropGroup;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/uimanager/annotations/ReactPropGroup;

    if-eqz v4, :cond_6

    .line 470
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 471
    array-length v10, v9

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    .line 478
    const-class v10, Landroid/view/View;

    aget-object v11, v9, v1

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 485
    aget-object v5, v9, v7

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v7, :cond_3

    .line 492
    aget-object v5, v9, v6

    invoke-static {v4, v3, v5, p1}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache;->createPropSetters(Lcom/facebook/react/uimanager/annotations/ReactPropGroup;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/util/Map;)V

    goto :goto_2

    .line 486
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Second argument should be property index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 479
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 472
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong number of args for group prop setter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method static getNativePropSettersForShadowNodeClass(Ljava/lang/Class;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/uimanager/ReactShadowNode;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;",
            ">;"
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 357
    const-class v4, Lcom/facebook/react/uimanager/ReactShadowNode;

    if-ne v3, v4, :cond_0

    .line 358
    sget-object p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache;->EMPTY_PROPS_MAP:Ljava/util/Map;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    :cond_1
    sget-object v0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache;->CLASS_PROPS_CACHE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    return-object v0

    .line 366
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    .line 369
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 368
    invoke-static {v1}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache;->getNativePropSettersForShadowNodeClass(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 370
    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache;->extractPropSettersFromShadowNodeClassDefinition(Ljava/lang/Class;Ljava/util/Map;)V

    .line 371
    sget-object v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache;->CLASS_PROPS_CACHE:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static getNativePropSettersForViewManagerClass(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;",
            ">;"
        }
    .end annotation

    .line 330
    const-class v0, Lcom/facebook/react/uimanager/ViewManager;

    if-ne p0, v0, :cond_0

    .line 331
    sget-object p0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache;->EMPTY_PROPS_MAP:Ljava/util/Map;

    return-object p0

    .line 333
    :cond_0
    sget-object v0, Lcom/facebook/react/uimanager/ViewManagersPropertyCache;->CLASS_PROPS_CACHE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    return-object v0

    .line 339
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    .line 342
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 341
    invoke-static {v1}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache;->getNativePropSettersForViewManagerClass(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 343
    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache;->extractPropSettersFromViewManagerClassDefinition(Ljava/lang/Class;Ljava/util/Map;)V

    .line 344
    sget-object v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache;->CLASS_PROPS_CACHE:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static getNativePropsForView(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/uimanager/ReactShadowNode;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 309
    invoke-static {p0}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache;->getNativePropSettersForViewManagerClass(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    .line 310
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;

    .line 311
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->getPropName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->getPropType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 315
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache;->getNativePropSettersForShadowNodeClass(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    .line 316
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;

    .line 317
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->getPropName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ViewManagersPropertyCache$PropSetter;->getPropType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object v0
.end method
