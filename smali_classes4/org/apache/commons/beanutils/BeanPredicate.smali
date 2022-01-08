.class public Lorg/apache/commons/beanutils/BeanPredicate;
.super Ljava/lang/Object;
.source "BeanPredicate.java"

# interfaces
.implements Lorg/apache/commons/collections/Predicate;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;

.field private predicate:Lorg/apache/commons/collections/Predicate;

.field private propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/collections/Predicate;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->log:Lorg/apache/commons/logging/Log;

    .line 51
    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanPredicate;->propertyName:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lorg/apache/commons/beanutils/BeanPredicate;->predicate:Lorg/apache/commons/collections/Predicate;

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 2

    .line 68
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->propertyName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/commons/beanutils/PropertyUtils;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->predicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 84
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Property not found."

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 80
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Exception occurred in property\'s getter"

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    .line 76
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Unable to access the property provided."

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception p1

    .line 72
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "ERROR: Problem during evaluation."

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 73
    throw p1
.end method

.method public getPredicate()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->predicate:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPredicate;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public setPredicate(Lorg/apache/commons/collections/Predicate;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanPredicate;->predicate:Lorg/apache/commons/collections/Predicate;

    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanPredicate;->propertyName:Ljava/lang/String;

    return-void
.end method
