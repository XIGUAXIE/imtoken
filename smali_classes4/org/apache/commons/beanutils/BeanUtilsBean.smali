.class public Lorg/apache/commons/beanutils/BeanUtilsBean;
.super Ljava/lang/Object;
.source "BeanUtilsBean.java"


# static fields
.field private static final BEANS_BY_CLASSLOADER:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/beanutils/ContextClassLoaderLocal<",
            "Lorg/apache/commons/beanutils/BeanUtilsBean;",
            ">;"
        }
    .end annotation
.end field

.field private static final INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;


# instance fields
.field private final convertUtilsBean:Lorg/apache/commons/beanutils/ConvertUtilsBean;

.field private final log:Lorg/apache/commons/logging/Log;

.field private final propertyUtilsBean:Lorg/apache/commons/beanutils/PropertyUtilsBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lorg/apache/commons/beanutils/BeanUtilsBean$1;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/BeanUtilsBean$1;-><init>()V

    sput-object v0, Lorg/apache/commons/beanutils/BeanUtilsBean;->BEANS_BY_CLASSLOADER:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;

    .line 104
    invoke-static {}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getInitCauseMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/beanutils/BeanUtilsBean;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 113
    new-instance v0, Lorg/apache/commons/beanutils/ConvertUtilsBean;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;-><init>()V

    new-instance v1, Lorg/apache/commons/beanutils/PropertyUtilsBean;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/BeanUtilsBean;-><init>(Lorg/apache/commons/beanutils/ConvertUtilsBean;Lorg/apache/commons/beanutils/PropertyUtilsBean;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/ConvertUtilsBean;)V
    .locals 1

    .line 126
    new-instance v0, Lorg/apache/commons/beanutils/PropertyUtilsBean;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/beanutils/BeanUtilsBean;-><init>(Lorg/apache/commons/beanutils/ConvertUtilsBean;Lorg/apache/commons/beanutils/PropertyUtilsBean;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/ConvertUtilsBean;Lorg/apache/commons/beanutils/PropertyUtilsBean;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-class v0, Lorg/apache/commons/beanutils/BeanUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    .line 141
    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->convertUtilsBean:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    .line 142
    iput-object p2, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->propertyUtilsBean:Lorg/apache/commons/beanutils/PropertyUtilsBean;

    return-void
.end method

.method private convertForCopy(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1095
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/BeanUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private static dynaPropertyType(Lorg/apache/commons/beanutils/DynaProperty;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/beanutils/DynaProperty;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1136
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/DynaProperty;->isMapped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1137
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/DynaProperty;->getType()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 1139
    const-class p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getInitCauseMethod()Ljava/lang/reflect/Method;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 1109
    const-class v3, Ljava/lang/Throwable;

    aput-object v3, v0, v2

    .line 1110
    const-class v2, Ljava/lang/Throwable;

    const-string v3, "initCause"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1118
    const-class v2, Lorg/apache/commons/beanutils/BeanUtils;

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    .line 1119
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Error getting the Throwable initCause() method"

    .line 1120
    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1

    :catch_0
    nop

    .line 1112
    const-class v0, Lorg/apache/commons/beanutils/BeanUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 1113
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Throwable does not have initCause() method in JDK 1.3"

    .line 1114
    invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method public static getInstance()Lorg/apache/commons/beanutils/BeanUtilsBean;
    .locals 1

    .line 76
    sget-object v0, Lorg/apache/commons/beanutils/BeanUtilsBean;->BEANS_BY_CLASSLOADER:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/beanutils/BeanUtilsBean;

    return-object v0
.end method

.method public static setInstance(Lorg/apache/commons/beanutils/BeanUtilsBean;)V
    .locals 1

    .line 87
    sget-object v0, Lorg/apache/commons/beanutils/BeanUtilsBean;->BEANS_BY_CLASSLOADER:Lorg/apache/commons/beanutils/ContextClassLoaderLocal;

    invoke-virtual {v0, p0}, Lorg/apache/commons/beanutils/ContextClassLoaderLocal;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cloneBean(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cloning bean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 177
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/beanutils/DynaBean;

    if-eqz v0, :cond_1

    .line 178
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaClass;->newInstance()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 182
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->copyProperties(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1076
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1078
    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        USING CONVERTER "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1079
    invoke-interface {v0, p2, p1}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public copyProperties(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    if-eqz p1, :cond_9

    if-eqz p2, :cond_8

    .line 241
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BeanUtils.copyProperties("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 247
    :cond_0
    instance-of v0, p2, Lorg/apache/commons/beanutils/DynaBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 248
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/beanutils/DynaBean;

    .line 249
    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v2

    .line 250
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    .line 251
    invoke-virtual {v4}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v5

    invoke-virtual {v5, p2, v4}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->isReadable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 255
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->isWriteable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 256
    invoke-interface {v0, v4}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 257
    invoke-virtual {p0, p1, v4, v5}, Lorg/apache/commons/beanutils/BeanUtilsBean;->copyProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_2
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 264
    check-cast p2, Ljava/util/Map;

    .line 265
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 266
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 267
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->isWriteable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->copyProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 273
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptors(Ljava/lang/Object;)[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    .line 274
    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 275
    invoke-virtual {v3}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "class"

    .line 276
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    .line 279
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->isReadable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 280
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->isWriteable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 284
    invoke-virtual {p0, p1, v3, v4}, Lorg/apache/commons/beanutils/BeanUtilsBean;->copyProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void

    .line 239
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No origin bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No destination bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  copyProperty("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string v1, "<NULL>"

    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 338
    :cond_0
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 339
    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 340
    :cond_1
    instance-of v1, p3, [Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 341
    move-object v1, p3

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    const/16 v2, 0x5b

    .line 342
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 343
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    if-lez v2, :cond_2

    const/16 v3, 0x2c

    .line 345
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    :cond_2
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0x5d

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 351
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v1, 0x29

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 359
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getResolver()Lorg/apache/commons/beanutils/expression/Resolver;

    move-result-object v0

    .line 360
    :goto_2
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 362
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v1

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 363
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    return-void

    .line 368
    :cond_6
    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 369
    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Target bean = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 370
    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Target name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 374
    :cond_7
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getIndex(Ljava/lang/String;)I

    move-result v2

    .line 377
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    instance-of v3, p1, Lorg/apache/commons/beanutils/DynaBean;

    if-eqz v3, :cond_9

    .line 381
    move-object p2, p1

    check-cast p2, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {p2}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object p2

    .line 382
    invoke-interface {p2, v1}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object p2

    if-nez p2, :cond_8

    return-void

    .line 386
    :cond_8
    invoke-static {p2, p3}, Lorg/apache/commons/beanutils/BeanUtilsBean;->dynaPropertyType(Lorg/apache/commons/beanutils/DynaProperty;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p2

    goto :goto_3

    .line 391
    :cond_9
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4

    if-nez p2, :cond_a

    return-void

    .line 398
    :cond_a
    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object p2

    if-nez p2, :cond_c

    .line 401
    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 402
    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    target type for property \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' is null, so skipping ths setter"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_b
    return-void

    .line 408
    :cond_c
    :goto_3
    iget-object v3, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 409
    iget-object v3, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    target propName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    :cond_d
    const-string v3, "Cannot set "

    if-ltz v2, :cond_e

    .line 415
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p0, p3, p2}, Lorg/apache/commons/beanutils/BeanUtilsBean;->convertForCopy(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 417
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object p3

    invoke-virtual {p3, p1, v1, v2, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setIndexedProperty(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 420
    new-instance p2, Ljava/lang/reflect/InvocationTargetException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw p2

    :cond_e
    if-eqz v0, :cond_f

    .line 428
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1, v1, v0, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 431
    new-instance p2, Ljava/lang/reflect/InvocationTargetException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw p2

    .line 435
    :cond_f
    invoke-direct {p0, p3, p2}, Lorg/apache/commons/beanutils/BeanUtilsBean;->convertForCopy(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 437
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object p3

    invoke-virtual {p3, p1, v1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setSimpleProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    return-void

    :catch_3
    move-exception p1

    .line 439
    new-instance p2, Ljava/lang/reflect/InvocationTargetException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw p2

    :catch_4
    return-void
.end method

.method public describe(Ljava/lang/Object;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 490
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 493
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Describing bean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 497
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 498
    instance-of v1, p1, Lorg/apache/commons/beanutils/DynaBean;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 499
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/beanutils/DynaBean;

    .line 500
    invoke-interface {v1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v1

    .line 501
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v4, v1, v2

    .line 502
    invoke-virtual {v4}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v4

    .line 503
    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 507
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptors(Ljava/lang/Object;)[Ljava/beans/PropertyDescriptor;

    move-result-object v1

    .line 508
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 509
    array-length v4, v1

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v5, v1, v2

    .line 510
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v6

    .line 511
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v7

    invoke-virtual {v7, v3, v5}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getReadMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 512
    invoke-virtual {p0, p1, v6}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public getArrayProperty(Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 540
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 543
    :cond_0
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 545
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 547
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 550
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 553
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 554
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 555
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 556
    new-array v2, v0, [Ljava/lang/String;

    :goto_1
    if-ge v1, v0, :cond_5

    .line 558
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 560
    aput-object p2, v2, v1

    goto :goto_2

    .line 563
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-object v2

    :cond_6
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    .line 569
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    return-object p2
.end method

.method public getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;
    .locals 1

    .line 1032
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->convertUtilsBean:Lorg/apache/commons/beanutils/ConvertUtilsBean;

    return-object v0
.end method

.method public getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 599
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 600
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 627
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    .line 628
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMappedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 656
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 657
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 684
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 685
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNestedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 711
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getNestedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 712
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 737
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getNestedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;
    .locals 1

    .line 1041
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->propertyUtilsBean:Lorg/apache/commons/beanutils/PropertyUtilsBean;

    return-object v0
.end method

.method public getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 761
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 762
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z
    .locals 4

    .line 1053
    sget-object v0, Lorg/apache/commons/beanutils/BeanUtilsBean;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v1

    .line 1055
    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    :cond_0
    return v1
.end method

.method public populate(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 809
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BeanUtils.populate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 815
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 817
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_0

    .line 823
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  setProperty("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 866
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 867
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string v2, "<NULL>"

    .line 871
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 872
    :cond_0
    instance-of v2, p3, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 873
    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 874
    :cond_1
    instance-of v2, p3, [Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 875
    move-object v2, p3

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    const/16 v3, 0x5b

    .line 876
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    .line 877
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    if-lez v3, :cond_2

    const/16 v4, 0x2c

    .line 879
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 881
    :cond_2
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/16 v2, 0x5d

    .line 883
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 885
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v2, 0x29

    .line 887
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 888
    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 893
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getResolver()Lorg/apache/commons/beanutils/expression/Resolver;

    move-result-object v0

    .line 894
    :goto_2
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 896
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v2

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    return-void

    .line 900
    :cond_6
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    return-void

    .line 905
    :cond_7
    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 906
    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    Target bean = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 907
    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    Target name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 911
    :cond_8
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 913
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getIndex(Ljava/lang/String;)I

    move-result v3

    .line 914
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 917
    instance-of v4, p1, Lorg/apache/commons/beanutils/DynaBean;

    if-eqz v4, :cond_a

    .line 918
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v0

    .line 919
    invoke-interface {v0, v2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 923
    :cond_9
    invoke-static {v0, p3}, Lorg/apache/commons/beanutils/BeanUtilsBean;->dynaPropertyType(Lorg/apache/commons/beanutils/DynaProperty;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    if-ltz v3, :cond_1b

    .line 924
    const-class v4, Ljava/util/List;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 925
    const-class v0, Ljava/lang/Object;

    goto/16 :goto_3

    .line 927
    :cond_a
    instance-of v4, p1, Ljava/util/Map;

    if-eqz v4, :cond_b

    .line 928
    const-class v0, Ljava/lang/Object;

    goto/16 :goto_3

    :cond_b
    if-eqz p1, :cond_c

    .line 929
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_c

    if-ltz v3, :cond_c

    .line 930
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_3

    .line 935
    :cond_c
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v4, :cond_d

    return-void

    .line 942
    :cond_d
    instance-of v5, v4, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    const-string v6, "Skipping read-only property"

    if-eqz v5, :cond_10

    .line 943
    check-cast v4, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    invoke-virtual {v4}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_f

    .line 944
    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 945
    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_e
    return-void

    .line 950
    :cond_f
    invoke-virtual {v4}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedPropertyType()Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_3

    :cond_10
    if-ltz v3, :cond_13

    .line 951
    instance-of v5, v4, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz v5, :cond_13

    .line 952
    check-cast v4, Ljava/beans/IndexedPropertyDescriptor;

    invoke-virtual {v4}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_12

    .line 953
    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 954
    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_11
    return-void

    .line 959
    :cond_12
    invoke-virtual {v4}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedPropertyType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    :cond_13
    if-ltz v3, :cond_14

    .line 960
    const-class v5, Ljava/util/List;

    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 961
    const-class v0, Ljava/lang/Object;

    goto :goto_3

    :cond_14
    if-eqz v0, :cond_18

    .line 963
    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_16

    .line 964
    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 965
    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_15
    return-void

    :cond_16
    if-nez p3, :cond_17

    .line 969
    const-class v0, Ljava/lang/Object;

    goto :goto_3

    :cond_17
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    .line 971
    :cond_18
    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 972
    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 973
    iget-object p1, p0, Lorg/apache/commons/beanutils/BeanUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_19
    return-void

    .line 977
    :cond_1a
    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v0

    .line 983
    :cond_1b
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1f

    if-gez v3, :cond_1f

    if-nez p3, :cond_1c

    const/4 p3, 0x0

    .line 986
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    .line 987
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto/16 :goto_5

    .line 988
    :cond_1c
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 989
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto/16 :goto_5

    .line 990
    :cond_1d
    instance-of v1, p3, [Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 991
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v1

    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {v1, p3, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_5

    .line 993
    :cond_1e
    invoke-virtual {p0, p3, v0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_5

    .line 995
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 996
    instance-of v3, p3, Ljava/lang/String;

    if-nez v3, :cond_22

    if-nez p3, :cond_20

    goto :goto_4

    .line 999
    :cond_20
    instance-of v3, p3, [Ljava/lang/String;

    if-eqz v3, :cond_21

    .line 1000
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v3

    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    aget-object p3, p3, v1

    .line 1001
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1000
    invoke-virtual {v3, p3, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_5

    .line 1003
    :cond_21
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_5

    .line 997
    :cond_22
    :goto_4
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v1

    check-cast p3, Ljava/lang/String;

    .line 998
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 997
    invoke-virtual {v1, p3, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_5

    .line 1006
    :cond_23
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_24

    .line 1007
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v1

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_5

    .line 1008
    :cond_24
    instance-of v3, p3, [Ljava/lang/String;

    if-eqz v3, :cond_25

    .line 1009
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v3

    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    aget-object p3, p3, v1

    invoke-virtual {v3, p3, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_5

    .line 1012
    :cond_25
    invoke-virtual {p0, p3, v0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    .line 1018
    :goto_5
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 1020
    new-instance p2, Ljava/lang/reflect/InvocationTargetException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot set "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw p2

    :catch_2
    return-void
.end method
