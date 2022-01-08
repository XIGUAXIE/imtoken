.class public Lorg/apache/commons/beanutils/RowSetDynaClass;
.super Lorg/apache/commons/beanutils/JDBCDynaClass;
.source "RowSetDynaClass.java"

# interfaces
.implements Lorg/apache/commons/beanutils/DynaClass;
.implements Ljava/io/Serializable;


# instance fields
.field protected limit:I

.field protected rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/beanutils/DynaBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 104
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/beanutils/RowSetDynaClass;-><init>(Ljava/sql/ResultSet;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/sql/ResultSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 126
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/beanutils/RowSetDynaClass;-><init>(Ljava/sql/ResultSet;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/sql/ResultSet;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 151
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/beanutils/RowSetDynaClass;-><init>(Ljava/sql/ResultSet;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/sql/ResultSet;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/beanutils/RowSetDynaClass;-><init>(Ljava/sql/ResultSet;ZIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/sql/ResultSet;ZIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 238
    invoke-direct {p0}, Lorg/apache/commons/beanutils/JDBCDynaClass;-><init>()V

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lorg/apache/commons/beanutils/RowSetDynaClass;->limit:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/RowSetDynaClass;->rows:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 243
    iput-boolean p2, p0, Lorg/apache/commons/beanutils/RowSetDynaClass;->lowerCase:Z

    .line 244
    iput p3, p0, Lorg/apache/commons/beanutils/RowSetDynaClass;->limit:I

    .line 245
    invoke-virtual {p0, p4}, Lorg/apache/commons/beanutils/RowSetDynaClass;->setUseColumnLabel(Z)V

    .line 246
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/RowSetDynaClass;->introspect(Ljava/sql/ResultSet;)V

    .line 247
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/RowSetDynaClass;->copy(Ljava/sql/ResultSet;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 241
    throw p1
.end method

.method public constructor <init>(Ljava/sql/ResultSet;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 209
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/beanutils/RowSetDynaClass;-><init>(Ljava/sql/ResultSet;ZIZ)V

    return-void
.end method


# virtual methods
.method protected copy(Ljava/sql/ResultSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 288
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/apache/commons/beanutils/RowSetDynaClass;->limit:I

    if-ltz v2, :cond_0

    add-int/lit8 v3, v1, 0x1

    if-ge v1, v2, :cond_2

    move v1, v3

    .line 289
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/RowSetDynaClass;->createDynaBean()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v2

    .line 290
    iget-object v3, p0, Lorg/apache/commons/beanutils/RowSetDynaClass;->properties:[Lorg/apache/commons/beanutils/DynaProperty;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 291
    invoke-virtual {v6}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object v6

    .line 292
    invoke-virtual {p0, p1, v6}, Lorg/apache/commons/beanutils/RowSetDynaClass;->getObject(Ljava/sql/ResultSet;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 293
    invoke-interface {v2, v6, v7}, Lorg/apache/commons/beanutils/DynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 295
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/beanutils/RowSetDynaClass;->rows:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected createDynaBean()Lorg/apache/commons/beanutils/DynaBean;
    .locals 1

    .line 309
    new-instance v0, Lorg/apache/commons/beanutils/BasicDynaBean;

    invoke-direct {v0, p0}, Lorg/apache/commons/beanutils/BasicDynaBean;-><init>(Lorg/apache/commons/beanutils/DynaClass;)V

    return-object v0
.end method

.method public bridge synthetic getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;
    .locals 1

    .line 68
    invoke-super {p0}, Lorg/apache/commons/beanutils/JDBCDynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lorg/apache/commons/beanutils/JDBCDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .line 68
    invoke-super {p0}, Lorg/apache/commons/beanutils/JDBCDynaClass;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/beanutils/DynaBean;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lorg/apache/commons/beanutils/RowSetDynaClass;->rows:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic newInstance()Lorg/apache/commons/beanutils/DynaBean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 68
    invoke-super {p0}, Lorg/apache/commons/beanutils/JDBCDynaClass;->newInstance()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUseColumnLabel(Z)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lorg/apache/commons/beanutils/JDBCDynaClass;->setUseColumnLabel(Z)V

    return-void
.end method
