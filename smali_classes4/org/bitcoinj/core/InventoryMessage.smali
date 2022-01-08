.class public Lorg/bitcoinj/core/InventoryMessage;
.super Lorg/bitcoinj/core/ListMessage;
.source "InventoryMessage.java"


# static fields
.field public static final MAX_INV_SIZE:I = 0xc350


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/ListMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/core/ListMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BLorg/bitcoinj/core/MessageSerializer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bitcoinj/core/ListMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BLorg/bitcoinj/core/MessageSerializer;I)V

    return-void
.end method

.method public static varargs with([Lorg/bitcoinj/core/Transaction;)Lorg/bitcoinj/core/InventoryMessage;
    .locals 4

    .line 66
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 67
    new-instance v0, Lorg/bitcoinj/core/InventoryMessage;

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bitcoinj/core/InventoryMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 68
    array-length v2, p0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 69
    invoke-virtual {v0, v3}, Lorg/bitcoinj/core/InventoryMessage;->addTransaction(Lorg/bitcoinj/core/Transaction;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public addBlock(Lorg/bitcoinj/core/Block;)V
    .locals 2

    .line 57
    new-instance v0, Lorg/bitcoinj/core/InventoryItem;

    sget-object v1, Lorg/bitcoinj/core/InventoryItem$Type;->Block:Lorg/bitcoinj/core/InventoryItem$Type;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bitcoinj/core/InventoryItem;-><init>(Lorg/bitcoinj/core/InventoryItem$Type;Lorg/bitcoinj/core/Sha256Hash;)V

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/InventoryMessage;->addItem(Lorg/bitcoinj/core/InventoryItem;)V

    return-void
.end method

.method public addTransaction(Lorg/bitcoinj/core/Transaction;)V
    .locals 2

    .line 61
    new-instance v0, Lorg/bitcoinj/core/InventoryItem;

    sget-object v1, Lorg/bitcoinj/core/InventoryItem$Type;->Transaction:Lorg/bitcoinj/core/InventoryItem$Type;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bitcoinj/core/InventoryItem;-><init>(Lorg/bitcoinj/core/InventoryItem$Type;Lorg/bitcoinj/core/Sha256Hash;)V

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/InventoryMessage;->addItem(Lorg/bitcoinj/core/InventoryItem;)V

    return-void
.end method
