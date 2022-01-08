.class public Lorg/apache/commons/beanutils/ResultSetIterator;
.super Ljava/lang/Object;
.source "ResultSetIterator.java"

# interfaces
.implements Lorg/apache/commons/beanutils/DynaBean;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/beanutils/DynaBean;",
        "Ljava/util/Iterator<",
        "Lorg/apache/commons/beanutils/DynaBean;",
        ">;"
    }
.end annotation


# instance fields
.field protected current:Z

.field protected dynaClass:Lorg/apache/commons/beanutils/ResultSetDynaClass;

.field protected eof:Z


# direct methods
.method constructor <init>(Lorg/apache/commons/beanutils/ResultSetDynaClass;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->current:Z

    const/4 v1, 0x0

    .line 70
    iput-object v1, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->dynaClass:Lorg/apache/commons/beanutils/ResultSetDynaClass;

    .line 77
    iput-boolean v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->eof:Z

    .line 51
    iput-object p1, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->dynaClass:Lorg/apache/commons/beanutils/ResultSetDynaClass;

    return-void
.end method


# virtual methods
.method protected advance()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 342
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->current:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->eof:Z

    if-nez v0, :cond_1

    .line 343
    iget-object v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->dynaClass:Lorg/apache/commons/beanutils/ResultSetDynaClass;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ResultSetDynaClass;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 344
    iput-boolean v1, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->current:Z

    .line 345
    iput-boolean v2, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->eof:Z

    goto :goto_0

    .line 347
    :cond_0
    iput-boolean v2, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->current:Z

    .line 348
    iput-boolean v1, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->eof:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 97
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "FIXME - mapped properties not currently supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 114
    iget-object v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->dynaClass:Lorg/apache/commons/beanutils/ResultSetDynaClass;

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/ResultSetDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->dynaClass:Lorg/apache/commons/beanutils/ResultSetDynaClass;

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/ResultSetDynaClass;->getObjectFromResultSet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 120
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): SQLException: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0

    .line 145
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "FIXME - indexed properties not currently supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 166
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "FIXME - mapped properties not currently supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDynaClass()Lorg/apache/commons/beanutils/DynaClass;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->dynaClass:Lorg/apache/commons/beanutils/ResultSetDynaClass;

    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    .line 290
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/ResultSetIterator;->advance()V

    .line 291
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->eof:Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 293
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasNext():  SQLException:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/ResultSetIterator;->next()Lorg/apache/commons/beanutils/DynaBean;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/commons/beanutils/DynaBean;
    .locals 4

    .line 307
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/ResultSetIterator;->advance()V

    .line 308
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->eof:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 311
    iput-boolean v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->current:Z

    return-object p0

    .line 309
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 314
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "next():  SQLException:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove()V
    .locals 2

    .line 326
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 198
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "FIXME - mapped operations not currently supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 250
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "FIXME - indexed properties not currently supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 219
    iget-object v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->dynaClass:Lorg/apache/commons/beanutils/ResultSetDynaClass;

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/ResultSetDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/ResultSetIterator;->dynaClass:Lorg/apache/commons/beanutils/ResultSetDynaClass;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/ResultSetDynaClass;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/sql/ResultSet;->updateObject(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 225
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): SQLException: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 272
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "FIXME - mapped properties not currently supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
