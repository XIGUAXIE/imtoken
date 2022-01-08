.class public Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;
.super Ljava/lang/Object;
.source "BeanPropertyValueChangeClosure.java"

# interfaces
.implements Lorg/apache/commons/collections/Closure;


# instance fields
.field private ignoreNull:Z

.field private final log:Lorg/apache/commons/logging/Log;

.field private propertyName:Ljava/lang/String;

.field private propertyValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->log:Lorg/apache/commons/logging/Log;

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 141
    iput-object p1, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->propertyName:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->propertyValue:Ljava/lang/Object;

    .line 143
    iput-boolean p3, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->ignoreNull:Z

    return-void

    .line 145
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "propertyName cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 3

    .line 166
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->propertyName:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->propertyValue:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lorg/apache/commons/beanutils/PropertyUtils;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Property not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-static {v0, p1}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 199
    :cond_0
    throw v0

    :catch_1
    move-exception p1

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exception occurred in property\'s getter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-static {v0, p1}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 190
    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 192
    :cond_1
    throw v0

    :catch_2
    move-exception p1

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to access the property provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-static {v0, p1}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 183
    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 185
    :cond_2
    throw v0

    :catch_3
    move-exception p1

    .line 170
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->ignoreNull:Z

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING: Unable to execute Closure. Null value encountered in property path..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 173
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to execute Closure. Null value encountered in property path..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-static {v0, p1}, Lorg/apache/commons/beanutils/BeanUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 175
    iget-object v2, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 177
    :cond_4
    throw v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyValue()Ljava/lang/Object;
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->propertyValue:Ljava/lang/Object;

    return-object v0
.end method

.method public isIgnoreNull()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/BeanPropertyValueChangeClosure;->ignoreNull:Z

    return v0
.end method
