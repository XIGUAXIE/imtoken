.class public Lorg/bitcoinj/core/TransactionOutputChanges;
.super Ljava/lang/Object;
.source "TransactionOutputChanges.java"


# instance fields
.field public final txOutsCreated:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/UTXO;",
            ">;"
        }
    .end annotation
.end field

.field public final txOutsSpent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/UTXO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 42
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 43
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 44
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 45
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/bitcoinj/core/TransactionOutputChanges;->txOutsCreated:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 47
    iget-object v3, p0, Lorg/bitcoinj/core/TransactionOutputChanges;->txOutsCreated:Ljava/util/List;

    new-instance v4, Lorg/bitcoinj/core/UTXO;

    invoke-direct {v4, p1}, Lorg/bitcoinj/core/UTXO;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 50
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 51
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    .line 52
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    .line 53
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lorg/bitcoinj/core/TransactionOutputChanges;->txOutsSpent:Ljava/util/List;

    :goto_1
    if-ge v1, v0, :cond_1

    .line 55
    iget-object v2, p0, Lorg/bitcoinj/core/TransactionOutputChanges;->txOutsSpent:Ljava/util/List;

    new-instance v3, Lorg/bitcoinj/core/UTXO;

    invoke-direct {v3, p1}, Lorg/bitcoinj/core/UTXO;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/UTXO;",
            ">;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/UTXO;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/bitcoinj/core/TransactionOutputChanges;->txOutsCreated:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lorg/bitcoinj/core/TransactionOutputChanges;->txOutsSpent:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public serializeToStream(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionOutputChanges;->txOutsCreated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    .line 60
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 61
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 62
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 63
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 64
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionOutputChanges;->txOutsCreated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/UTXO;

    .line 65
    invoke-virtual {v1, p1}, Lorg/bitcoinj/core/UTXO;->serializeToStream(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionOutputChanges;->txOutsSpent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    .line 69
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 70
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 71
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 72
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 73
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionOutputChanges;->txOutsSpent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/UTXO;

    .line 74
    invoke-virtual {v1, p1}, Lorg/bitcoinj/core/UTXO;->serializeToStream(Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_1
    return-void
.end method
