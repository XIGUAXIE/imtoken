.class public Lorg/apache/commons/digester/SetPropertiesRule;
.super Lorg/apache/commons/digester/Rule;
.source "SetPropertiesRule.java"


# instance fields
.field private attributeNames:[Ljava/lang/String;

.field private ignoreMissingProperty:Z

.field private propertyNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lorg/apache/commons/digester/SetPropertiesRule;->ignoreMissingProperty:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 81
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lorg/apache/commons/digester/SetPropertiesRule;->ignoreMissingProperty:Z

    new-array v1, v0, [Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lorg/apache/commons/digester/SetPropertiesRule;->attributeNames:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lorg/apache/commons/digester/SetPropertiesRule;->propertyNames:[Ljava/lang/String;

    aput-object p2, p1, v2

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/Digester;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    invoke-direct {p0}, Lorg/apache/commons/digester/SetPropertiesRule;-><init>()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 126
    invoke-direct {p0}, Lorg/apache/commons/digester/Rule;-><init>()V

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lorg/apache/commons/digester/SetPropertiesRule;->ignoreMissingProperty:Z

    .line 128
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/digester/SetPropertiesRule;->attributeNames:[Ljava/lang/String;

    .line 129
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 130
    iget-object v3, p0, Lorg/apache/commons/digester/SetPropertiesRule;->attributeNames:[Ljava/lang/String;

    aget-object v4, p1, v2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_0
    array-length p1, p2

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/digester/SetPropertiesRule;->propertyNames:[Ljava/lang/String;

    .line 134
    array-length p1, p2

    :goto_1
    if-ge v1, p1, :cond_1

    .line 135
    iget-object v0, p0, Lorg/apache/commons/digester/SetPropertiesRule;->propertyNames:[Ljava/lang/String;

    aget-object v2, p2, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public addAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 269
    iget-object v0, p0, Lorg/apache/commons/digester/SetPropertiesRule;->attributeNames:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 271
    iput-object v2, p0, Lorg/apache/commons/digester/SetPropertiesRule;->attributeNames:[Ljava/lang/String;

    aput-object p1, v2, v1

    new-array p1, v0, [Ljava/lang/String;

    .line 273
    iput-object p1, p0, Lorg/apache/commons/digester/SetPropertiesRule;->propertyNames:[Ljava/lang/String;

    aput-object p2, p1, v1

    goto :goto_2

    .line 277
    :cond_0
    array-length v0, v0

    add-int/lit8 v2, v0, 0x1

    .line 278
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 280
    iget-object v5, p0, Lorg/apache/commons/digester/SetPropertiesRule;->attributeNames:[Ljava/lang/String;

    aget-object v5, v5, v4

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 282
    :cond_1
    aput-object p1, v3, v0

    .line 284
    new-array p1, v2, [Ljava/lang/String;

    :goto_1
    if-ge v1, v0, :cond_2

    .line 285
    iget-object v2, p0, Lorg/apache/commons/digester/SetPropertiesRule;->propertyNames:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 286
    aget-object v2, v2, v1

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 288
    :cond_2
    aput-object p2, p1, v0

    .line 290
    iput-object p1, p0, Lorg/apache/commons/digester/SetPropertiesRule;->propertyNames:[Ljava/lang/String;

    .line 291
    iput-object v3, p0, Lorg/apache/commons/digester/SetPropertiesRule;->attributeNames:[Ljava/lang/String;

    :goto_2
    return-void
.end method

.method public begin(Lorg/xml/sax/Attributes;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    iget-object v1, p0, Lorg/apache/commons/digester/SetPropertiesRule;->attributeNames:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 174
    array-length v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 177
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/digester/SetPropertiesRule;->propertyNames:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 178
    array-length v3, v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    .line 182
    :goto_2
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    const-string v6, "[SetPropertiesRule]{"

    if-ge v4, v5, :cond_a

    .line 183
    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    .line 184
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 185
    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    .line 187
    :cond_2
    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v1, :cond_5

    .line 191
    iget-object v9, p0, Lorg/apache/commons/digester/SetPropertiesRule;->attributeNames:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-ge v8, v3, :cond_3

    .line 194
    iget-object v5, p0, Lorg/apache/commons/digester/SetPropertiesRule;->propertyNames:[Ljava/lang/String;

    aget-object v5, v5, v8

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 205
    :cond_5
    :goto_4
    iget-object v8, p0, Lorg/apache/commons/digester/SetPropertiesRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v8, v8, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 206
    iget-object v8, p0, Lorg/apache/commons/digester/SetPropertiesRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v8, v8, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/commons/digester/SetPropertiesRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v6, v6, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "} Setting property \'"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' to \'"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 211
    :cond_6
    iget-boolean v6, p0, Lorg/apache/commons/digester/SetPropertiesRule;->ignoreMissingProperty:Z

    if-nez v6, :cond_8

    if-eqz v5, :cond_8

    .line 231
    iget-object v6, p0, Lorg/apache/commons/digester/SetPropertiesRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {v6}, Lorg/apache/commons/digester/Digester;->peek()Ljava/lang/Object;

    move-result-object v6

    .line 232
    invoke-static {v6, v5}, Lorg/apache/commons/beanutils/PropertyUtils;->isWriteable(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    .line 234
    :cond_7
    new-instance p1, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can\'t be set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_5
    if-eqz v5, :cond_9

    .line 238
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 243
    :cond_a
    iget-object p1, p0, Lorg/apache/commons/digester/SetPropertiesRule;->digester:Lorg/apache/commons/digester/Digester;

    invoke-virtual {p1}, Lorg/apache/commons/digester/Digester;->peek()Ljava/lang/Object;

    move-result-object p1

    .line 244
    iget-object v1, p0, Lorg/apache/commons/digester/SetPropertiesRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v1, v1, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz p1, :cond_b

    .line 246
    iget-object v1, p0, Lorg/apache/commons/digester/SetPropertiesRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v1, v1, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/digester/SetPropertiesRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v3, v3, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "} Set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_6

    .line 250
    :cond_b
    iget-object v1, p0, Lorg/apache/commons/digester/SetPropertiesRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v1, v1, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/digester/SetPropertiesRule;->digester:Lorg/apache/commons/digester/Digester;

    iget-object v3, v3, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "} Set NULL properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 254
    :cond_c
    :goto_6
    invoke-static {p1, v0}, Lorg/apache/commons/beanutils/BeanUtils;->populate(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method public isIgnoreMissingProperty()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lorg/apache/commons/digester/SetPropertiesRule;->ignoreMissingProperty:Z

    return v0
.end method

.method public setIgnoreMissingProperty(Z)V
    .locals 0

    .line 331
    iput-boolean p1, p0, Lorg/apache/commons/digester/SetPropertiesRule;->ignoreMissingProperty:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 302
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SetPropertiesRule["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "]"

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
