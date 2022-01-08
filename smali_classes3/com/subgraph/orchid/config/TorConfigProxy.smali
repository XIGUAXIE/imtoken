.class public Lcom/subgraph/orchid/config/TorConfigProxy;
.super Ljava/lang/Object;
.source "TorConfigProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final bridges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/config/TorConfigBridgeLine;",
            ">;"
        }
    .end annotation
.end field

.field private final configValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final parser:Lcom/subgraph/orchid/config/TorConfigParser;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->configValues:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->bridges:Ljava/util/List;

    .line 26
    iget-object v1, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->configValues:Ljava/util/Map;

    const-string v2, "Bridges"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v0, Lcom/subgraph/orchid/config/TorConfigParser;

    invoke-direct {v0}, Lcom/subgraph/orchid/config/TorConfigParser;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->parser:Lcom/subgraph/orchid/config/TorConfigParser;

    return-void
.end method

.method private getAnnotationForVariable(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$ConfigVar;
    .locals 5

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 192
    const-class v0, Lcom/subgraph/orchid/TorConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 193
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    const-class p1, Lcom/subgraph/orchid/TorConfig$ConfigVar;

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/TorConfig$ConfigVar;

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDefaultValueString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getAnnotationForVariable(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$ConfigVar;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 165
    :cond_0
    invoke-interface {p1}, Lcom/subgraph/orchid/TorConfig$ConfigVar;->defaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDefaultVariableValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 152
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getDefaultValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getVariableType(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    move-result-object p1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->parser:Lcom/subgraph/orchid/config/TorConfigParser;

    invoke-virtual {v1, v0, p1}, Lcom/subgraph/orchid/config/TorConfigParser;->parseValue(Ljava/lang/String;Lcom/subgraph/orchid/TorConfig$ConfigVarType;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getHSAuth(Ljava/lang/String;)Lcom/subgraph/orchid/config/TorConfigHSAuth;
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->configValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->configValues:Ljava/util/Map;

    new-instance v1, Lcom/subgraph/orchid/config/TorConfigHSAuth;

    invoke-direct {v1}, Lcom/subgraph/orchid/config/TorConfigHSAuth;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->configValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/config/TorConfigHSAuth;

    return-object p1
.end method

.method private getVariableNameForMethod(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 1

    .line 183
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "get"

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "add"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getVariableType(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .locals 1

    const-string v0, "Bridge"

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    sget-object p1, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BRIDGE_LINE:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    return-object p1

    .line 174
    :cond_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getAnnotationForVariable(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$ConfigVar;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 178
    :cond_1
    invoke-interface {p1}, Lcom/subgraph/orchid/TorConfig$ConfigVar;->type()Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    move-result-object p1

    return-object p1
.end method

.method private getVariableValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->configValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->configValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 147
    :cond_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getDefaultVariableValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private invokeAddMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 2

    .line 99
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getVariableNameForMethod(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getVariableType(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    move-result-object v0

    .line 101
    sget-object v1, Lcom/subgraph/orchid/config/TorConfigProxy$1;->$SwitchMap$com$subgraph$orchid$TorConfig$ConfigVarType:[I

    invoke-virtual {v0}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    .line 107
    invoke-direct {p0, p2}, Lcom/subgraph/orchid/config/TorConfigProxy;->invokeBridgeAdd([Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addX configuration methods only supported for HS_AUTH or BRIDGE_LINE type"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/config/TorConfigProxy;->invokeHSAuthAdd(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private invokeBridgeAdd([Ljava/lang/Object;)V
    .locals 5

    .line 116
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v2, p1, v0

    instance-of v2, v2, Lcom/subgraph/orchid/data/IPv4Address;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    aget-object v3, p1, v2

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 117
    array-length v3, p1

    if-ne v3, v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->bridges:Ljava/util/List;

    new-instance v3, Lcom/subgraph/orchid/config/TorConfigBridgeLine;

    aget-object v0, p1, v0

    check-cast v0, Lcom/subgraph/orchid/data/IPv4Address;

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v3, v0, p1, v2}, Lcom/subgraph/orchid/config/TorConfigBridgeLine;-><init>(Lcom/subgraph/orchid/data/IPv4Address;ILcom/subgraph/orchid/data/HexDigest;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 120
    :cond_0
    array-length v3, p1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    aget-object v3, p1, v1

    instance-of v3, v3, Lcom/subgraph/orchid/data/HexDigest;

    if-eqz v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->bridges:Ljava/util/List;

    new-instance v4, Lcom/subgraph/orchid/config/TorConfigBridgeLine;

    aget-object v0, p1, v0

    check-cast v0, Lcom/subgraph/orchid/data/IPv4Address;

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object p1, p1, v1

    check-cast p1, Lcom/subgraph/orchid/data/HexDigest;

    invoke-direct {v4, v0, v2, p1}, Lcom/subgraph/orchid/config/TorConfigBridgeLine;-><init>(Lcom/subgraph/orchid/data/IPv4Address;ILcom/subgraph/orchid/data/HexDigest;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 125
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private invokeGetMethod(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2

    .line 79
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getVariableNameForMethod(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getVariableValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 82
    instance-of v0, p1, Lcom/subgraph/orchid/config/TorConfigInterval;

    if-eqz v0, :cond_0

    .line 83
    check-cast p1, Lcom/subgraph/orchid/config/TorConfigInterval;

    .line 84
    invoke-virtual {p1}, Lcom/subgraph/orchid/config/TorConfigInterval;->getMilliseconds()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private invokeGetMethodWithArgs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 70
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getVariableNameForMethod(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getVariableType(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    move-result-object v0

    sget-object v1, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->HS_AUTH:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    if-ne v0, v1, :cond_0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/config/TorConfigProxy;->invokeHSAuthGet(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private invokeHSAuthAdd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 129
    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    aget-object v2, p2, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 132
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getHSAuth(Ljava/lang/String;)Lcom/subgraph/orchid/config/TorConfigHSAuth;

    move-result-object p1

    .line 133
    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/subgraph/orchid/config/TorConfigHSAuth;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private invokeHSAuthGet(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 91
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getHSAuth(Ljava/lang/String;)Lcom/subgraph/orchid/config/TorConfigHSAuth;

    move-result-object p1

    .line 95
    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/subgraph/orchid/config/TorConfigHSAuth;->get(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    move-result-object p1

    return-object p1

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private setIntervalValue(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 59
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    aget-object v2, p2, v1

    instance-of v2, v2, Ljava/util/concurrent/TimeUnit;

    if-eqz v2, :cond_0

    .line 62
    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 63
    aget-object p2, p2, v1

    check-cast p2, Ljava/util/concurrent/TimeUnit;

    .line 64
    new-instance v0, Lcom/subgraph/orchid/config/TorConfigInterval;

    invoke-direct {v0, v2, v3, p2}, Lcom/subgraph/orchid/config/TorConfigInterval;-><init>(JLjava/util/concurrent/TimeUnit;)V

    .line 65
    iget-object p2, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->configValues:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 31
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p0, p2, p3}, Lcom/subgraph/orchid/config/TorConfigProxy;->invokeSetMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    return-object v0

    .line 34
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "get"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    .line 36
    invoke-direct {p0, p2}, Lcom/subgraph/orchid/config/TorConfigProxy;->invokeGetMethod(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 38
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/subgraph/orchid/config/TorConfigProxy;->invokeGetMethodWithArgs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 40
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "add"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 41
    invoke-direct {p0, p2, p3}, Lcom/subgraph/orchid/config/TorConfigProxy;->invokeAddMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    return-object v0

    .line 44
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method invokeSetMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getVariableNameForMethod(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getAnnotationForVariable(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$ConfigVar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig$ConfigVar;->type()Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    move-result-object v0

    sget-object v1, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->INTERVAL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    if-ne v0, v1, :cond_0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/config/TorConfigProxy;->setIntervalValue(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->configValues:Ljava/util/Map;

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
