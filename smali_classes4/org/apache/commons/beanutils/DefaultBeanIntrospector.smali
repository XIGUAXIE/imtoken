.class public Lorg/apache/commons/beanutils/DefaultBeanIntrospector;
.super Ljava/lang/Object;
.source "DefaultBeanIntrospector.java"

# interfaces
.implements Lorg/apache/commons/beanutils/BeanIntrospector;


# static fields
.field private static final EMPTY_CLASS_PARAMETERS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lorg/apache/commons/beanutils/BeanIntrospector;

.field private static final LIST_CLASS_PARAMETER:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;-><init>()V

    sput-object v0, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->INSTANCE:Lorg/apache/commons/beanutils/BeanIntrospector;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 54
    sput-object v1, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->EMPTY_CLASS_PARAMETERS:[Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 57
    const-class v2, Ljava/util/List;

    aput-object v2, v1, v0

    sput-object v1, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->LIST_CLASS_PARAMETER:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method private handleIndexedPropertyDescriptors(Ljava/lang/Class;[Ljava/beans/PropertyDescriptor;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/beans/PropertyDescriptor;",
            ")V"
        }
    .end annotation

    .line 124
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p2, v2

    .line 125
    instance-of v4, v3, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz v4, :cond_5

    .line 126
    check-cast v3, Ljava/beans/IndexedPropertyDescriptor;

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/beans/IndexedPropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v3}, Ljava/beans/IndexedPropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-virtual {v3}, Ljava/beans/IndexedPropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    if-nez v5, :cond_1

    .line 132
    invoke-virtual {v3}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 133
    invoke-virtual {v3}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    :goto_1
    sget-object v7, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->EMPTY_CLASS_PARAMETERS:[Ljava/lang/Class;

    .line 136
    invoke-static {p1, v5, v7}, Lorg/apache/commons/beanutils/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 140
    :try_start_0
    invoke-virtual {v3, v5}, Ljava/beans/IndexedPropertyDescriptor;->setReadMethod(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 142
    iget-object v7, p0, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "Error setting indexed property read method"

    invoke-interface {v7, v8, v5}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 148
    :cond_1
    :goto_2
    invoke-virtual {v3}, Ljava/beans/IndexedPropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    if-nez v5, :cond_5

    .line 149
    invoke-virtual {v3}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 150
    invoke-virtual {v3}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 152
    :goto_3
    sget-object v5, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->LIST_CLASS_PARAMETER:[Ljava/lang/Class;

    .line 153
    invoke-static {p1, v4, v5}, Lorg/apache/commons/beanutils/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-nez v5, :cond_4

    .line 156
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 157
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 158
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 159
    array-length v12, v11

    if-ne v12, v6, :cond_3

    const-class v12, Ljava/util/List;

    aget-object v11, v11, v1

    .line 161
    invoke-virtual {v12, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v5, v10

    goto :goto_5

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    if-eqz v5, :cond_5

    .line 170
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/beans/IndexedPropertyDescriptor;->setWriteMethod(Ljava/lang/reflect/Method;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v3

    .line 172
    iget-object v4, p0, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Error setting indexed property write method"

    invoke-interface {v4, v5, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_5
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public introspect(Lorg/apache/commons/beanutils/IntrospectionContext;)V
    .locals 4

    .line 79
    :try_start_0
    invoke-interface {p1}, Lorg/apache/commons/beanutils/IntrospectionContext;->getTargetClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    invoke-interface {v0}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/beans/PropertyDescriptor;

    .line 93
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/beanutils/IntrospectionContext;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->handleIndexedPropertyDescriptors(Ljava/lang/Class;[Ljava/beans/PropertyDescriptor;)V

    .line 95
    invoke-interface {p1, v0}, Lorg/apache/commons/beanutils/IntrospectionContext;->addPropertyDescriptors([Ljava/beans/PropertyDescriptor;)V

    return-void

    :catch_0
    move-exception v0

    .line 82
    iget-object v1, p0, Lorg/apache/commons/beanutils/DefaultBeanIntrospector;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when inspecting class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-interface {p1}, Lorg/apache/commons/beanutils/IntrospectionContext;->getTargetClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-interface {v1, p1, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
