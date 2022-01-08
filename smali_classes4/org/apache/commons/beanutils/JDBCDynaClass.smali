.class abstract Lorg/apache/commons/beanutils/JDBCDynaClass;
.super Ljava/lang/Object;
.source "JDBCDynaClass.java"

# interfaces
.implements Lorg/apache/commons/beanutils/DynaClass;
.implements Ljava/io/Serializable;


# instance fields
.field private columnNameXref:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected lowerCase:Z

.field protected properties:[Lorg/apache/commons/beanutils/DynaProperty;

.field protected propertiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/beanutils/DynaProperty;",
            ">;"
        }
    .end annotation
.end field

.field private useColumnLabel:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->lowerCase:Z

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->properties:[Lorg/apache/commons/beanutils/DynaProperty;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->propertiesMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected createDynaProperty(Ljava/sql/ResultSetMetaData;I)Lorg/apache/commons/beanutils/DynaProperty;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 184
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->useColumnLabel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {p1, p2}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 188
    :cond_1
    invoke-interface {p1, p2}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    :cond_2
    iget-boolean v2, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->lowerCase:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v0

    .line 191
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 192
    iget-object v3, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->columnNameXref:Ljava/util/Map;

    if-nez v3, :cond_4

    .line 193
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->columnNameXref:Ljava/util/Map;

    .line 195
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->columnNameXref:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_5
    :try_start_0
    invoke-interface {p1, p2}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 208
    invoke-interface {p1, p2}, Ljava/sql/ResultSetMetaData;->getColumnClassName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 204
    :pswitch_0
    new-instance p1, Lorg/apache/commons/beanutils/DynaProperty;

    const-class p2, Ljava/sql/Timestamp;

    invoke-direct {p1, v2, p2}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object p1

    .line 206
    :pswitch_1
    new-instance p1, Lorg/apache/commons/beanutils/DynaProperty;

    const-class p2, Ljava/sql/Time;

    invoke-direct {p1, v2, p2}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object p1

    .line 202
    :pswitch_2
    new-instance p1, Lorg/apache/commons/beanutils/DynaProperty;

    const-class p2, Ljava/sql/Date;

    invoke-direct {p1, v2, p2}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    .line 217
    :goto_2
    const-class p1, Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 219
    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/JDBCDynaClass;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 221
    :cond_6
    new-instance p2, Lorg/apache/commons/beanutils/DynaProperty;

    invoke-direct {p2, v2, p1}, Lorg/apache/commons/beanutils/DynaProperty;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getColumnName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->columnNameXref:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->columnNameXref:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->properties:[Lorg/apache/commons/beanutils/DynaProperty;

    return-object v0
.end method

.method public getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;
    .locals 1

    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->propertiesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/beanutils/DynaProperty;

    return-object p1

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No property name specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getObject(Ljava/sql/ResultSet;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 268
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/JDBCDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 272
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/JDBCDynaClass;->getColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 273
    invoke-virtual {v0}, Lorg/apache/commons/beanutils/DynaProperty;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 276
    const-class v1, Ljava/sql/Date;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getDate(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object p1

    return-object p1

    .line 281
    :cond_0
    const-class v1, Ljava/sql/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1

    .line 286
    :cond_1
    const-class v1, Ljava/sql/Time;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getTime(Ljava/lang/String;)Ljava/sql/Time;

    move-result-object p1

    return-object p1

    .line 290
    :cond_2
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 270
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid name \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected introspect(Ljava/sql/ResultSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object p1

    .line 241
    invoke-interface {p1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v1, :cond_1

    .line 243
    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/beanutils/JDBCDynaClass;->createDynaProperty(Ljava/sql/ResultSetMetaData;I)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 245
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/apache/commons/beanutils/DynaProperty;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/beanutils/DynaProperty;

    iput-object p1, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->properties:[Lorg/apache/commons/beanutils/DynaProperty;

    .line 252
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 253
    iget-object v3, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->propertiesMap:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 156
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    .line 161
    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 163
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load column class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public newInstance()Lorg/apache/commons/beanutils/DynaBean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "newInstance() not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUseColumnLabel(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lorg/apache/commons/beanutils/JDBCDynaClass;->useColumnLabel:Z

    return-void
.end method
