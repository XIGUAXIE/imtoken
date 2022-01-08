.class public Lorg/apache/commons/beanutils/PropertyUtilsBean;
.super Ljava/lang/Object;
.source "PropertyUtilsBean.java"


# static fields
.field private static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;


# instance fields
.field private descriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/beanutils/WeakFastHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/beanutils/BeanIntrospectionData;",
            ">;"
        }
    .end annotation
.end field

.field private final introspectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/beanutils/BeanIntrospector;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;

.field private mappedDescriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/beanutils/WeakFastHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/collections/FastHashMap;",
            ">;"
        }
    .end annotation
.end field

.field private resolver:Lorg/apache/commons/beanutils/expression/Resolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 120
    sput-object v0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lorg/apache/commons/beanutils/expression/DefaultResolver;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/expression/DefaultResolver;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->descriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;

    .line 117
    iput-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->mappedDescriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;

    .line 123
    const-class v0, Lorg/apache/commons/beanutils/PropertyUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    .line 132
    new-instance v0, Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->descriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;

    const/4 v1, 0x1

    .line 133
    invoke-virtual {v0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->setFast(Z)V

    .line 134
    new-instance v0, Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->mappedDescriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;

    .line 135
    invoke-virtual {v0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->setFast(Z)V

    .line 136
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->introspectors:Ljava/util/List;

    .line 137
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resetBeanIntrospectors()V

    return-void
.end method

.method private fetchIntrospectionData(Ljava/lang/Class;)Lorg/apache/commons/beanutils/BeanIntrospectionData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/beanutils/BeanIntrospectionData;"
        }
    .end annotation

    .line 2242
    new-instance v0, Lorg/apache/commons/beanutils/DefaultIntrospectionContext;

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/DefaultIntrospectionContext;-><init>(Ljava/lang/Class;)V

    .line 2244
    iget-object p1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->introspectors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/beanutils/BeanIntrospector;

    .line 2246
    :try_start_0
    invoke-interface {v1, v0}, Lorg/apache/commons/beanutils/BeanIntrospector;->introspect(Lorg/apache/commons/beanutils/IntrospectionContext;)V
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2248
    iget-object v2, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Exception during introspection"

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2252
    :cond_0
    new-instance p1, Lorg/apache/commons/beanutils/BeanIntrospectionData;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/DefaultIntrospectionContext;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/beanutils/BeanIntrospectionData;-><init>([Ljava/beans/PropertyDescriptor;)V

    return-object p1
.end method

.method protected static getInstance()Lorg/apache/commons/beanutils/PropertyUtilsBean;
    .locals 1

    .line 107
    invoke-static {}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getInstance()Lorg/apache/commons/beanutils/BeanUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getPropertyUtils()Lorg/apache/commons/beanutils/PropertyUtilsBean;

    move-result-object v0

    return-object v0
.end method

.method private getIntrospectionData(Ljava/lang/Class;)Lorg/apache/commons/beanutils/BeanIntrospectionData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/beanutils/BeanIntrospectionData;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2225
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->descriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/beanutils/BeanIntrospectionData;

    if-nez v0, :cond_0

    .line 2227
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->fetchIntrospectionData(Ljava/lang/Class;)Lorg/apache/commons/beanutils/BeanIntrospectionData;

    move-result-object v0

    .line 2228
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->descriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {v1, p1, v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    .line 2221
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No bean class specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v3, "<null>"

    const-string v4, "Method invocation failed"

    const-string v5, "\""

    const-string v6, "\" but expected signature \""

    const-string v7, " - had objects of type \""

    const-string v8, "\' - "

    const-string v9, " on bean class \'"

    const-string v10, "."

    const-string v11, "Cannot invoke "

    const-string v12, ", "

    const-string v13, ""

    if-eqz p2, :cond_d

    .line 2128
    :try_start_0
    invoke-virtual/range {p1 .. p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v15, v0

    if-eqz v2, :cond_2

    move-object v14, v13

    move-object/from16 v16, v14

    const/4 v0, 0x0

    .line 2172
    :goto_0
    array-length v13, v2

    if-ge v0, v13, :cond_3

    if-lez v0, :cond_0

    .line 2174
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2176
    :cond_0
    aget-object v13, v2, v0

    if-nez v13, :cond_1

    .line 2177
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 2179
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v2, v0

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_1
    move-object v14, v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v16, v13

    move-object/from16 v14, v16

    .line 2184
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    move-object/from16 v13, v16

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    .line 2186
    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_5

    if-lez v2, :cond_4

    .line 2188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2190
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v0, v2

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2193
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2194
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2195
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2196
    invoke-virtual {v15}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2202
    invoke-static {v0, v15}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2203
    iget-object v2, v1, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2, v4, v15}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2205
    :cond_6
    throw v0

    :catch_1
    move-exception v0

    move-object/from16 v16, v13

    move-object v13, v0

    move-object/from16 v14, v16

    if-eqz v2, :cond_9

    const/4 v0, 0x0

    .line 2135
    :goto_3
    array-length v15, v2

    if-ge v0, v15, :cond_9

    if-lez v0, :cond_7

    .line 2137
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2139
    :cond_7
    aget-object v15, v2, v0

    if-nez v15, :cond_8

    .line 2140
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 2142
    :cond_8
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v2, v0

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2147
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    move-object/from16 v2, v16

    if-eqz v0, :cond_b

    const/4 v3, 0x0

    .line 2149
    :goto_5
    array-length v15, v0

    if-ge v3, v15, :cond_b

    if-lez v3, :cond_a

    .line 2151
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2153
    :cond_a
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2156
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2157
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2158
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2159
    invoke-virtual {v13}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2165
    invoke-static {v0, v13}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 2166
    iget-object v2, v1, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2, v4, v13}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2168
    :cond_c
    throw v0

    .line 2122
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "No bean specified - this should have been checked before reaching this method"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toObjectList(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2267
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static toPropertyMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2283
    check-cast p0, Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public addBeanIntrospector(Lorg/apache/commons/beanutils/BeanIntrospector;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->introspectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 205
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BeanIntrospector must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearDescriptors()V
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->descriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->clear()V

    .line 231
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->mappedDescriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->clear()V

    .line 232
    invoke-static {}, Ljava/beans/Introspector;->flushCaches()V

    return-void
.end method

.method public copyProperties(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-eqz p1, :cond_a

    if-eqz p2, :cond_9

    .line 280
    instance-of v0, p2, Lorg/apache/commons/beanutils/DynaBean;

    const/4 v1, 0x0

    const-string v2, "\'"

    const-string v3, "\' on class \'"

    const-string v4, "Error writing to \'"

    if-eqz v0, :cond_2

    .line 281
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/beanutils/DynaBean;

    .line 282
    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    .line 283
    array-length v5, v0

    :goto_0
    if-ge v1, v5, :cond_8

    aget-object v6, v0, v1

    .line 284
    invoke-virtual {v6}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v6

    .line 285
    invoke-virtual {p0, p2, v6}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->isReadable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, p1, v6}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->isWriteable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 287
    :try_start_0
    move-object v7, p2

    check-cast v7, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v7, v6}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 288
    instance-of v8, p1, Lorg/apache/commons/beanutils/DynaBean;

    if-eqz v8, :cond_0

    .line 289
    move-object v8, p1

    check-cast v8, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v8, v6, v7}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 291
    :cond_0
    invoke-virtual {p0, p1, v6, v7}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setSimpleProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 294
    iget-object v8, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 295
    iget-object v8, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    :cond_2
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 301
    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 302
    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 303
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 304
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 305
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->isWriteable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 307
    :try_start_1
    instance-of v5, p1, Lorg/apache/commons/beanutils/DynaBean;

    if-eqz v5, :cond_4

    .line 308
    move-object v5, p1

    check-cast v5, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 310
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setSimpleProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 313
    iget-object v5, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 314
    iget-object v5, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 321
    :cond_5
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptors(Ljava/lang/Object;)[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    .line 322
    array-length v5, v0

    :goto_3
    if-ge v1, v5, :cond_8

    aget-object v6, v0, v1

    .line 323
    invoke-virtual {v6}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v6

    .line 324
    invoke-virtual {p0, p2, v6}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->isReadable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0, p1, v6}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->isWriteable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 326
    :try_start_2
    invoke-virtual {p0, p2, v6}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 327
    instance-of v8, p1, Lorg/apache/commons/beanutils/DynaBean;

    if-eqz v8, :cond_6

    .line 328
    move-object v8, p1

    check-cast v8, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {v8, v6, v7}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 330
    :cond_6
    invoke-virtual {p0, p1, v6, v7}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setSimpleProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v7

    .line 333
    iget-object v8, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 334
    iget-object v8, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return-void

    .line 277
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No origin bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 273
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No destination bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public describe(Ljava/lang/Object;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
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

    if-eqz p1, :cond_3

    .line 370
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 371
    instance-of v1, p1, Lorg/apache/commons/beanutils/DynaBean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 372
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/beanutils/DynaBean;

    .line 373
    invoke-interface {v1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v1

    .line 374
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 375
    invoke-virtual {v4}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v4

    .line 376
    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptors(Ljava/lang/Object;)[Ljava/beans/PropertyDescriptor;

    move-result-object v1

    .line 381
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 382
    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    .line 383
    invoke-virtual {v4}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 384
    invoke-virtual {p0, p1, v5}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    .line 368
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No bean specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const-string v0, "\' on bean class \'"

    const-string v1, "Invalid indexed property \'"

    if-eqz p1, :cond_2

    const-string v2, "\'"

    if-eqz p2, :cond_1

    .line 432
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v3, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getIndex(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v3, :cond_0

    .line 444
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 447
    invoke-virtual {p0, p1, p2, v3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 439
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v2

    .line 434
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 425
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No name specified for bean class \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 422
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-eqz p1, :cond_c

    if-eqz p2, :cond_0

    .line 482
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 483
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 485
    :cond_1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 486
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "\'"

    if-eqz p2, :cond_b

    .line 495
    instance-of v1, p1, Lorg/apache/commons/beanutils/DynaBean;

    const-string v2, "\' on bean class \'"

    const-string v3, "Unknown property \'"

    if-eqz v1, :cond_4

    .line 496
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/beanutils/DynaBean;

    .line 497
    invoke-interface {v1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v4

    invoke-interface {v4, p2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 502
    invoke-interface {v1, p2, p3}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 499
    :cond_3
    new-instance p3, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 507
    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 514
    instance-of v2, v1, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz v2, :cond_6

    .line 515
    move-object v2, v1

    check-cast v2, Ljava/beans/IndexedPropertyDescriptor;

    .line 516
    invoke-virtual {v2}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 517
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 520
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, p2, v0

    .line 522
    :try_start_0
    invoke-direct {p0, v2, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 524
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/IndexOutOfBoundsException;

    if-eqz p2, :cond_5

    .line 527
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/IndexOutOfBoundsException;

    throw p1

    .line 529
    :cond_5
    throw p1

    .line 536
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getReadMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "Property \'"

    if-eqz v1, :cond_9

    .line 543
    sget-object v3, Lorg/apache/commons/beanutils/PropertyUtilsBean;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-direct {p0, v1, p1, v3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 544
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_8

    .line 545
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_7

    .line 550
    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 546
    :cond_7
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is not indexed on bean class \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 555
    :cond_8
    :try_start_1
    invoke-static {v1, p3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 557
    :catch_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", Size: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " for property \'"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 538
    :cond_9
    new-instance p3, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' has no getter method on bean class \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 509
    :cond_a
    new-instance p3, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 490
    :cond_b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No name specified for bean class \'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 480
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMappedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const-string v0, "\' on bean class \'"

    const-string v1, "Invalid mapped property \'"

    if-eqz p1, :cond_2

    const-string v2, "\'"

    if-eqz p2, :cond_1

    .line 600
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v3, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 612
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 615
    invoke-virtual {p0, p1, p2, v3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 607
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v2

    .line 602
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 593
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No name specified for bean class \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 590
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-eqz p1, :cond_9

    const-string v0, "\'"

    if-eqz p2, :cond_8

    if-eqz p3, :cond_7

    .line 654
    instance-of v1, p1, Lorg/apache/commons/beanutils/DynaBean;

    const-string v2, "\'+ on bean class \'"

    const-string v3, "Unknown property \'"

    if-eqz v1, :cond_1

    .line 655
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/beanutils/DynaBean;

    .line 656
    invoke-interface {v1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v4

    invoke-interface {v4, p2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 661
    invoke-interface {v1, p2, p3}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 658
    :cond_0
    new-instance p3, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1
    const/4 v1, 0x0

    .line 667
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 673
    instance-of v2, v4, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    const-string v3, "\' has no mapped getter method on bean class \'"

    const-string v5, "Property \'"

    if-eqz v2, :cond_3

    .line 675
    check-cast v4, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    .line 676
    invoke-virtual {v4}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 677
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    .line 681
    invoke-direct {p0, v1, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 683
    :cond_2
    new-instance p3, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 689
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getReadMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 691
    sget-object p2, Lorg/apache/commons/beanutils/PropertyUtilsBean;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-direct {p0, v2, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 693
    instance-of p2, p1, Ljava/util/Map;

    if-eqz p2, :cond_4

    .line 694
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_4
    move-object p1, v1

    :goto_0
    return-object p1

    .line 697
    :cond_5
    new-instance p3, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 669
    :cond_6
    new-instance p3, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 649
    :cond_7
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No key specified for property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' on bean class "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 645
    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No name specified for bean class \'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 642
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMappedPropertyDescriptors(Ljava/lang/Class;)Lorg/apache/commons/collections/FastHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/collections/FastHashMap;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 724
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->mappedDescriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections/FastHashMap;

    return-object p1
.end method

.method public getMappedPropertyDescriptors(Ljava/lang/Object;)Lorg/apache/commons/collections/FastHashMap;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 744
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedPropertyDescriptors(Ljava/lang/Class;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object p1

    return-object p1
.end method

.method public getNestedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-eqz p1, :cond_9

    const-string v0, "\'"

    if-eqz p2, :cond_8

    .line 781
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 782
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 784
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 785
    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyOfMapBean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 786
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v2, v1}, Lorg/apache/commons/beanutils/expression/Resolver;->isMapped(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 787
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 788
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v2, v1}, Lorg/apache/commons/beanutils/expression/Resolver;->isIndexed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 789
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 791
    :cond_2
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    .line 799
    iget-object p1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {p1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object p1, v1

    goto :goto_0

    .line 794
    :cond_3
    new-instance v1, Lorg/apache/commons/beanutils/NestedNullException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null property value for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' on bean class \'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/commons/beanutils/NestedNullException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 802
    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 803
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyOfMapBean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 804
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isMapped(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 805
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 806
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isIndexed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 807
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 809
    :cond_7
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1

    .line 776
    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No name specified for bean class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 773
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 885
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getNestedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-eqz p1, :cond_7

    const-string v0, "\'"

    if-eqz p2, :cond_6

    .line 934
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 935
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 936
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 943
    iget-object p1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {p1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object p1, v2

    goto :goto_0

    .line 938
    :cond_0
    new-instance p2, Lorg/apache/commons/beanutils/NestedNullException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null property value for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' on bean class \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/beanutils/NestedNullException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 947
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 955
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIntrospectionData(Ljava/lang/Class;)Lorg/apache/commons/beanutils/BeanIntrospectionData;

    move-result-object v0

    .line 956
    invoke-virtual {v0, p2}, Lorg/apache/commons/beanutils/BeanIntrospectionData;->getDescriptor(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 962
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedPropertyDescriptors(Ljava/lang/Object;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v0

    if-nez v0, :cond_4

    .line 964
    new-instance v0, Lorg/apache/commons/collections/FastHashMap;

    invoke-direct {v0}, Lorg/apache/commons/collections/FastHashMap;-><init>()V

    const/4 v1, 0x1

    .line 965
    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    .line 966
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->mappedDescriptorsCache:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    :cond_4
    invoke-virtual {v0, p2}, Lorg/apache/commons/collections/FastHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyDescriptor;

    if-nez v1, :cond_5

    .line 972
    :try_start_0
    new-instance v2, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v2, p2, p1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-eqz v1, :cond_5

    .line 979
    invoke-virtual {v0, p2, v1}, Lorg/apache/commons/collections/FastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v1

    .line 929
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No name specified for bean class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 926
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPropertyDescriptors(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/beans/PropertyDescriptor;"
        }
    .end annotation

    .line 1003
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIntrospectionData(Ljava/lang/Class;)Lorg/apache/commons/beanutils/BeanIntrospectionData;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/beanutils/BeanIntrospectionData;->getDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyDescriptors(Ljava/lang/Object;)[Ljava/beans/PropertyDescriptor;
    .locals 1

    if-eqz p1, :cond_0

    .line 1024
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptors(Ljava/lang/Class;)[Ljava/beans/PropertyDescriptor;

    move-result-object p1

    return-object p1

    .line 1022
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No bean specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPropertyEditorClass(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 1072
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1074
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getPropertyEditorClass()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 1067
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No name specified for bean class \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1064
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getPropertyOfMapBean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 843
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isMapped(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 844
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 846
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 850
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isIndexed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    .line 851
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isMapped(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 857
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 852
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexed or mapped properties are not supported on objects of type Map: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPropertyType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-eqz p1, :cond_a

    const-string v0, "\'"

    if-eqz p2, :cond_9

    .line 1127
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1128
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1129
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1136
    iget-object p1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {p1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object p1, v2

    goto :goto_0

    .line 1131
    :cond_0
    new-instance p2, Lorg/apache/commons/beanutils/NestedNullException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null property value for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' on bean class \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/beanutils/NestedNullException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1140
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1143
    instance-of v0, p1, Lorg/apache/commons/beanutils/DynaBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1144
    check-cast p1, Lorg/apache/commons/beanutils/DynaBean;

    .line 1145
    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    .line 1149
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/beanutils/DynaProperty;->getType()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    .line 1152
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1153
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    :cond_4
    return-object p1

    .line 1160
    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object p1

    if-nez p1, :cond_6

    return-object v1

    .line 1163
    :cond_6
    instance-of p2, p1, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz p2, :cond_7

    .line 1164
    check-cast p1, Ljava/beans/IndexedPropertyDescriptor;

    .line 1165
    invoke-virtual {p1}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedPropertyType()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 1166
    :cond_7
    instance-of p2, p1, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    if-eqz p2, :cond_8

    .line 1167
    check-cast p1, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    .line 1168
    invoke-virtual {p1}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedPropertyType()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 1170
    :cond_8
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 1122
    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No name specified for bean class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1119
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getReadMethod(Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1187
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method getReadMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/beans/PropertyDescriptor;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1203
    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method public getResolver()Lorg/apache/commons/beanutils/expression/Resolver;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    return-object v0
.end method

.method public getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-eqz p1, :cond_8

    const-string v0, "\'"

    if-eqz p2, :cond_7

    .line 1239
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "\' on bean class \'"

    if-nez v1, :cond_6

    .line 1243
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isIndexed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1247
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isMapped(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1254
    instance-of v1, p1, Lorg/apache/commons/beanutils/DynaBean;

    const-string v2, "Unknown property \'"

    if-eqz v1, :cond_1

    .line 1255
    check-cast p1, Lorg/apache/commons/beanutils/DynaBean;

    .line 1256
    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1262
    invoke-interface {p1, p2}, Lorg/apache/commons/beanutils/DynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1258
    :cond_0
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' on dynaclass \'"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1267
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getReadMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1279
    sget-object p2, Lorg/apache/commons/beanutils/PropertyUtilsBean;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-direct {p0, v1, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1274
    :cond_2
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' has no getter method in class \'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1269
    :cond_3
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' on class \'"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1248
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mapped property names are not allowed: Property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1244
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Indexed property names are not allowed: Property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1240
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nested property names are not allowed: Property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1234
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No name specified for bean class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1231
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getWriteMethod(Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1301
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method public getWriteMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/beans/PropertyDescriptor;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1318
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIntrospectionData(Ljava/lang/Class;)Lorg/apache/commons/beanutils/BeanIntrospectionData;

    move-result-object v0

    .line 1320
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/beanutils/BeanIntrospectionData;->getWriteMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 1319
    invoke-static {p1, p2}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method public isReadable(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 4

    if-eqz p1, :cond_a

    const-string v0, "\'"

    if-eqz p2, :cond_9

    .line 1351
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1352
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1355
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 1369
    iget-object p1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {p1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object p1, v2

    goto :goto_0

    .line 1364
    :cond_0
    new-instance p2, Lorg/apache/commons/beanutils/NestedNullException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null property value for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' on bean class \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/beanutils/NestedNullException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    return v2

    .line 1373
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1377
    instance-of v0, p1, Lorg/apache/commons/beanutils/WrapDynaBean;

    if-eqz v0, :cond_2

    .line 1378
    check-cast p1, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {p1}, Lorg/apache/commons/beanutils/WrapDynaBean;->getInstance()Ljava/lang/Object;

    move-result-object p1

    .line 1382
    :cond_2
    instance-of v0, p1, Lorg/apache/commons/beanutils/DynaBean;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 1384
    check-cast p1, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    .line 1388
    :cond_4
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 1390
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getReadMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1392
    instance-of v3, p2, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz v3, :cond_5

    .line 1393
    check-cast p2, Ljava/beans/IndexedPropertyDescriptor;

    invoke-virtual {p2}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_1

    .line 1394
    :cond_5
    instance-of v3, p2, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    if-eqz v3, :cond_6

    .line 1395
    check-cast p2, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    invoke-virtual {p2}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1397
    :cond_6
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    if-eqz v0, :cond_8

    const/4 v2, 0x1

    :catch_1
    :cond_8
    return v2

    .line 1346
    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No name specified for bean class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1343
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isWriteable(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 4

    if-eqz p1, :cond_a

    const-string v0, "\'"

    if-eqz p2, :cond_9

    .line 1442
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1443
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1446
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 1460
    iget-object p1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {p1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object p1, v2

    goto :goto_0

    .line 1455
    :cond_0
    new-instance p2, Lorg/apache/commons/beanutils/NestedNullException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null property value for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' on bean class \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/beanutils/NestedNullException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    return v2

    .line 1464
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1468
    instance-of v0, p1, Lorg/apache/commons/beanutils/WrapDynaBean;

    if-eqz v0, :cond_2

    .line 1469
    check-cast p1, Lorg/apache/commons/beanutils/WrapDynaBean;

    invoke-virtual {p1}, Lorg/apache/commons/beanutils/WrapDynaBean;->getInstance()Ljava/lang/Object;

    move-result-object p1

    .line 1473
    :cond_2
    instance-of v0, p1, Lorg/apache/commons/beanutils/DynaBean;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 1475
    check-cast p1, Lorg/apache/commons/beanutils/DynaBean;

    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    .line 1479
    :cond_4
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 1481
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getWriteMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1483
    instance-of v3, p2, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz v3, :cond_5

    .line 1484
    check-cast p2, Ljava/beans/IndexedPropertyDescriptor;

    invoke-virtual {p2}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_1

    .line 1485
    :cond_5
    instance-of v3, p2, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    if-eqz v3, :cond_6

    .line 1486
    check-cast p2, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    invoke-virtual {p2}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1488
    :cond_6
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    if-eqz v0, :cond_8

    const/4 v2, 0x1

    :catch_1
    :cond_8
    return v2

    .line 1437
    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No name specified for bean class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1434
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeBeanIntrospector(Lorg/apache/commons/beanutils/BeanIntrospector;)Z
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->introspectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final resetBeanIntrospectors()V
    .locals 2

    .line 189
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->introspectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->introspectors:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->INSTANCE:Lorg/apache/commons/beanutils/BeanIntrospector;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->introspectors:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/beanutils/SuppressPropertiesBeanIntrospector;->SUPPRESS_CLASS:Lorg/apache/commons/beanutils/SuppressPropertiesBeanIntrospector;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setIndexedProperty(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-eqz p1, :cond_e

    if-eqz p2, :cond_0

    .line 1596
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1597
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1598
    invoke-static {p1, p3, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    .line 1600
    :cond_1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1601
    invoke-static {p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->toObjectList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1602
    invoke-interface {p1, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    const-string v0, "\'"

    if-eqz p2, :cond_d

    .line 1612
    instance-of v1, p1, Lorg/apache/commons/beanutils/DynaBean;

    const-string v2, "\' on bean class \'"

    const-string v3, "Unknown property \'"

    if-eqz v1, :cond_4

    .line 1613
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/beanutils/DynaBean;

    .line 1614
    invoke-interface {v1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v4

    invoke-interface {v4, p2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1619
    invoke-interface {v1, p2, p3, p4}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 1616
    :cond_3
    new-instance p3, Ljava/lang/NoSuchMethodException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1625
    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1632
    instance-of v2, v1, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz v2, :cond_8

    .line 1633
    move-object v2, v1

    check-cast v2, Ljava/beans/IndexedPropertyDescriptor;

    .line 1634
    invoke-virtual {v2}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1635
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1638
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, p2, v0

    const/4 v0, 0x1

    aput-object p4, p2, v0

    .line 1641
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p4, :cond_5

    const-string v0, "<null>"

    goto :goto_0

    .line 1644
    :cond_5
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1645
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSimpleProperty: Invoking method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", value="

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " (class "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1650
    :cond_6
    invoke-direct {p0, v2, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1652
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/IndexOutOfBoundsException;

    if-eqz p2, :cond_7

    .line 1655
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/IndexOutOfBoundsException;

    throw p1

    .line 1657
    :cond_7
    throw p1

    .line 1665
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getReadMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "Property \'"

    if-eqz v1, :cond_b

    .line 1672
    sget-object v3, Lorg/apache/commons/beanutils/PropertyUtilsBean;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-direct {p0, v1, p1, v3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1673
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1674
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_9

    .line 1676
    invoke-static {v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->toObjectList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1677
    invoke-interface {p1, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1679
    :cond_9
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is not indexed on bean class \'"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1684
    :cond_a
    invoke-static {v1, p3, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_1
    return-void

    .line 1667
    :cond_b
    new-instance p3, Ljava/lang/NoSuchMethodException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' has no getter method on bean class \'"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1627
    :cond_c
    new-instance p3, Ljava/lang/NoSuchMethodException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1607
    :cond_d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No name specified for bean class \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1594
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIndexedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const-string v0, "\' on bean class \'"

    const-string v1, "Invalid indexed property \'"

    if-eqz p1, :cond_2

    const-string v2, "\'"

    if-eqz p2, :cond_1

    .line 1547
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v3, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getIndex(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v3, :cond_0

    .line 1558
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1561
    invoke-virtual {p0, p1, p2, v3, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setIndexedProperty(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 1553
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1549
    :catch_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1540
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No name specified for bean class \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1537
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const-string v0, "\' on bean class \'"

    const-string v1, "Invalid mapped property \'"

    if-eqz p1, :cond_2

    const-string v2, "\'"

    if-eqz p2, :cond_1

    .line 1725
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v3, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 1738
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1741
    invoke-virtual {p0, p1, p2, v3, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1732
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1734
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1727
    :catch_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1718
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No name specified for bean class \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1715
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-eqz p1, :cond_b

    const-string v0, "\'"

    if-eqz p2, :cond_a

    const-string v1, "\' on bean class \'"

    if-eqz p3, :cond_9

    .line 1780
    instance-of v2, p1, Lorg/apache/commons/beanutils/DynaBean;

    const-string v3, "Unknown property \'"

    if-eqz v2, :cond_1

    .line 1781
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/beanutils/DynaBean;

    .line 1782
    invoke-interface {v2}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v4

    invoke-interface {v4, p2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1787
    invoke-interface {v2, p2, p3, p4}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1784
    :cond_0
    new-instance p3, Ljava/lang/NoSuchMethodException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1793
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1799
    instance-of v1, v2, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    const-string v3, "Property \'"

    if-eqz v1, :cond_5

    .line 1801
    check-cast v2, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;

    .line 1803
    invoke-virtual {v2}, Lorg/apache/commons/beanutils/MappedPropertyDescriptor;->getMappedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1804
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/commons/beanutils/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const/4 v0, 0x1

    aput-object p4, p2, v0

    .line 1809
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p4, :cond_2

    const-string v0, "<null>"

    goto :goto_0

    .line 1811
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1812
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSimpleProperty: Invoking method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", value="

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " (class "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1817
    :cond_3
    invoke-direct {p0, v1, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1819
    :cond_4
    new-instance p3, Ljava/lang/NoSuchMethodException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' has no mapped setter methodon bean class \'"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1825
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getReadMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1827
    sget-object p2, Lorg/apache/commons/beanutils/PropertyUtilsBean;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-direct {p0, v1, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1829
    instance-of p2, p1, Ljava/util/Map;

    if-eqz p2, :cond_6

    .line 1830
    invoke-static {p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->toPropertyMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 1831
    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_1
    return-void

    .line 1834
    :cond_7
    new-instance p3, Ljava/lang/NoSuchMethodException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' has no mapped getter method on bean class \'"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1795
    :cond_8
    new-instance p3, Ljava/lang/NoSuchMethodException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1775
    :cond_9
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No key specified for property \'"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1771
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No name specified for bean class \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1768
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNestedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-eqz p1, :cond_9

    const-string v0, "\'"

    if-eqz p2, :cond_8

    .line 1887
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1888
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1890
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 1891
    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyOfMapBean(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 1892
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v2, v1}, Lorg/apache/commons/beanutils/expression/Resolver;->isMapped(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1893
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getMappedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 1894
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v2, v1}, Lorg/apache/commons/beanutils/expression/Resolver;->isIndexed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1895
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getIndexedProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 1897
    :cond_2
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getSimpleProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    .line 1905
    iget-object p1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {p1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object p1, v1

    goto :goto_0

    .line 1900
    :cond_3
    new-instance p3, Lorg/apache/commons/beanutils/NestedNullException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null property value for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' on bean class \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1902
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/apache/commons/beanutils/NestedNullException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1908
    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 1909
    invoke-static {p1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->toPropertyMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setPropertyOfMapBean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1910
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isMapped(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1911
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setMappedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1912
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isIndexed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1913
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setIndexedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1915
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setSimpleProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 1882
    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No name specified for bean class \'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1879
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 2022
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->setNestedProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected setPropertyOfMapBean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1980
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isMapped(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1981
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1982
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1983
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1987
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isIndexed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    .line 1988
    invoke-interface {v0, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isMapped(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1994
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1989
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Indexed or mapped properties are not supported on objects of type Map: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setResolver(Lorg/apache/commons/beanutils/expression/Resolver;)V
    .locals 0

    if-nez p1, :cond_0

    .line 176
    new-instance p1, Lorg/apache/commons/beanutils/expression/DefaultResolver;

    invoke-direct {p1}, Lorg/apache/commons/beanutils/expression/DefaultResolver;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    goto :goto_0

    .line 178
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    :goto_0
    return-void
.end method

.method public setSimpleProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-eqz p1, :cond_a

    const-string v0, "\'"

    if-eqz p2, :cond_9

    .line 2060
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->hasNested(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "\' on bean class \'"

    if-nez v1, :cond_8

    .line 2064
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isIndexed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2068
    iget-object v1, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->resolver:Lorg/apache/commons/beanutils/expression/Resolver;

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/expression/Resolver;->isMapped(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2075
    instance-of v1, p1, Lorg/apache/commons/beanutils/DynaBean;

    const-string v2, "Unknown property \'"

    if-eqz v1, :cond_1

    .line 2076
    check-cast p1, Lorg/apache/commons/beanutils/DynaBean;

    .line 2077
    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2083
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 2079
    :cond_0
    new-instance p3, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' on dynaclass \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 2089
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getPropertyDescriptor(Ljava/lang/Object;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2094
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->getWriteMethod(Ljava/lang/Class;Ljava/beans/PropertyDescriptor;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    .line 2103
    iget-object v0, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p3, :cond_2

    const-string v0, "<null>"

    goto :goto_0

    .line 2105
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2106
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/beanutils/PropertyUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSimpleProperty: Invoking method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " (class "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 2109
    :cond_3
    invoke-direct {p0, v1, p1, p2}, Lorg/apache/commons/beanutils/PropertyUtilsBean;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2096
    :cond_4
    new-instance p3, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' has no setter method in class \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2097
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 2091
    :cond_5
    new-instance p3, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' on class \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2092
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 2069
    :cond_6
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mapped property names are not allowed: Property \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 2065
    :cond_7
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed property names are not allowed: Property \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2067
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 2061
    :cond_8
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nested property names are not allowed: Property \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2063
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 2055
    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No name specified for bean class \'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2056
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2052
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No bean specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
