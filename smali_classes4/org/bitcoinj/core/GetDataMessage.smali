.class public Lorg/bitcoinj/core/GetDataMessage;
.super Lorg/bitcoinj/core/ListMessage;
.source "GetDataMessage.java"


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 0

    .line 46
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

    .line 28
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

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bitcoinj/core/ListMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BLorg/bitcoinj/core/MessageSerializer;I)V

    return-void
.end method


# virtual methods
.method public addBlock(Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 2

    .line 54
    new-instance v0, Lorg/bitcoinj/core/InventoryItem;

    sget-object v1, Lorg/bitcoinj/core/InventoryItem$Type;->Block:Lorg/bitcoinj/core/InventoryItem$Type;

    invoke-direct {v0, v1, p1}, Lorg/bitcoinj/core/InventoryItem;-><init>(Lorg/bitcoinj/core/InventoryItem$Type;Lorg/bitcoinj/core/Sha256Hash;)V

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/GetDataMessage;->addItem(Lorg/bitcoinj/core/InventoryItem;)V

    return-void
.end method

.method public addFilteredBlock(Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 2

    .line 58
    new-instance v0, Lorg/bitcoinj/core/InventoryItem;

    sget-object v1, Lorg/bitcoinj/core/InventoryItem$Type;->FilteredBlock:Lorg/bitcoinj/core/InventoryItem$Type;

    invoke-direct {v0, v1, p1}, Lorg/bitcoinj/core/InventoryItem;-><init>(Lorg/bitcoinj/core/InventoryItem$Type;Lorg/bitcoinj/core/Sha256Hash;)V

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/GetDataMessage;->addItem(Lorg/bitcoinj/core/InventoryItem;)V

    return-void
.end method

.method public addTransaction(Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 2

    .line 50
    new-instance v0, Lorg/bitcoinj/core/InventoryItem;

    sget-object v1, Lorg/bitcoinj/core/InventoryItem$Type;->Transaction:Lorg/bitcoinj/core/InventoryItem$Type;

    invoke-direct {v0, v1, p1}, Lorg/bitcoinj/core/InventoryItem;-><init>(Lorg/bitcoinj/core/InventoryItem$Type;Lorg/bitcoinj/core/Sha256Hash;)V

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/GetDataMessage;->addItem(Lorg/bitcoinj/core/InventoryItem;)V

    return-void
.end method

.method public getHashOf(I)Lorg/bitcoinj/core/Sha256Hash;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lorg/bitcoinj/core/GetDataMessage;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/InventoryItem;

    iget-object p1, p1, Lorg/bitcoinj/core/InventoryItem;->hash:Lorg/bitcoinj/core/Sha256Hash;

    return-object p1
.end method
