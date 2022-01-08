.class public Lorg/bitcoinj/core/StoredUndoableBlock;
.super Ljava/lang/Object;
.source "StoredUndoableBlock.java"


# instance fields
.field blockHash:Lorg/bitcoinj/core/Sha256Hash;

.field private transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private txOutChanges:Lorg/bitcoinj/core/TransactionOutputChanges;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/Sha256Hash;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/bitcoinj/core/StoredUndoableBlock;->blockHash:Lorg/bitcoinj/core/Sha256Hash;

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lorg/bitcoinj/core/StoredUndoableBlock;->txOutChanges:Lorg/bitcoinj/core/TransactionOutputChanges;

    .line 46
    iput-object p2, p0, Lorg/bitcoinj/core/StoredUndoableBlock;->transactions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/TransactionOutputChanges;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/bitcoinj/core/StoredUndoableBlock;->blockHash:Lorg/bitcoinj/core/Sha256Hash;

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lorg/bitcoinj/core/StoredUndoableBlock;->transactions:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lorg/bitcoinj/core/StoredUndoableBlock;->txOutChanges:Lorg/bitcoinj/core/TransactionOutputChanges;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/core/StoredUndoableBlock;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    check-cast p1, Lorg/bitcoinj/core/StoredUndoableBlock;

    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredUndoableBlock;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getHash()Lorg/bitcoinj/core/Sha256Hash;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/bitcoinj/core/StoredUndoableBlock;->blockHash:Lorg/bitcoinj/core/Sha256Hash;

    return-object v0
.end method

.method public getTransactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/bitcoinj/core/StoredUndoableBlock;->transactions:Ljava/util/List;

    return-object v0
.end method

.method public getTxOutChanges()Lorg/bitcoinj/core/TransactionOutputChanges;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/bitcoinj/core/StoredUndoableBlock;->txOutChanges:Lorg/bitcoinj/core/TransactionOutputChanges;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/bitcoinj/core/StoredUndoableBlock;->blockHash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Sha256Hash;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undoable Block "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bitcoinj/core/StoredUndoableBlock;->blockHash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
