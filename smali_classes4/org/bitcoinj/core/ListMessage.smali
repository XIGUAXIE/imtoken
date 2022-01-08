.class public abstract Lorg/bitcoinj/core/ListMessage;
.super Lorg/bitcoinj/core/Message;
.source "ListMessage.java"


# static fields
.field public static final MAX_INVENTORY_ITEMS:J = 0xc350L


# instance fields
.field private arrayLen:J

.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/InventoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/core/ListMessage;->items:Ljava/util/List;

    const/4 p1, 0x1

    .line 51
    iput p1, p0, Lorg/bitcoinj/core/ListMessage;->length:I

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[BLorg/bitcoinj/core/MessageSerializer;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 45
    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/MessageSerializer;I)V

    return-void
.end method


# virtual methods
.method public addItem(Lorg/bitcoinj/core/InventoryItem;)V
    .locals 3

    .line 59
    invoke-virtual {p0}, Lorg/bitcoinj/core/ListMessage;->unCache()V

    .line 60
    iget v0, p0, Lorg/bitcoinj/core/ListMessage;->length:I

    iget-object v1, p0, Lorg/bitcoinj/core/ListMessage;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/bitcoinj/core/VarInt;->sizeOf(J)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/core/ListMessage;->length:I

    .line 61
    iget-object v0, p0, Lorg/bitcoinj/core/ListMessage;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget p1, p0, Lorg/bitcoinj/core/ListMessage;->length:I

    iget-object v0, p0, Lorg/bitcoinj/core/ListMessage;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/bitcoinj/core/VarInt;->sizeOf(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    add-int/2addr p1, v0

    iput p1, p0, Lorg/bitcoinj/core/ListMessage;->length:I

    return-void
.end method

.method public bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    new-instance v0, Lorg/bitcoinj/core/VarInt;

    iget-object v1, p0, Lorg/bitcoinj/core/ListMessage;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v0}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 113
    iget-object v0, p0, Lorg/bitcoinj/core/ListMessage;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/InventoryItem;

    .line 115
    iget-object v2, v1, Lorg/bitcoinj/core/InventoryItem;->type:Lorg/bitcoinj/core/InventoryItem$Type;

    invoke-virtual {v2}, Lorg/bitcoinj/core/InventoryItem$Type;->ordinal()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 117
    iget-object v1, v1, Lorg/bitcoinj/core/InventoryItem;->hash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Sha256Hash;->getReversedBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/core/ListMessage;->items:Ljava/util/List;

    check-cast p1, Lorg/bitcoinj/core/ListMessage;

    iget-object p1, p1, Lorg/bitcoinj/core/ListMessage;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/InventoryItem;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/bitcoinj/core/ListMessage;->items:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/bitcoinj/core/ListMessage;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method protected parse()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lorg/bitcoinj/core/ListMessage;->readVarInt()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/ListMessage;->arrayLen:J

    const-wide/32 v2, 0xc350

    cmp-long v4, v0, v2

    if-gtz v4, :cond_6

    .line 77
    iget v0, p0, Lorg/bitcoinj/core/ListMessage;->cursor:I

    iget v1, p0, Lorg/bitcoinj/core/ListMessage;->offset:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/bitcoinj/core/ListMessage;->arrayLen:J

    const-wide/16 v4, 0x24

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lorg/bitcoinj/core/ListMessage;->length:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    iget-wide v1, p0, Lorg/bitcoinj/core/ListMessage;->arrayLen:J

    long-to-int v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/bitcoinj/core/ListMessage;->items:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    int-to-long v1, v0

    .line 81
    iget-wide v3, p0, Lorg/bitcoinj/core/ListMessage;->arrayLen:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_5

    .line 82
    iget v1, p0, Lorg/bitcoinj/core/ListMessage;->cursor:I

    add-int/lit8 v1, v1, 0x24

    iget-object v2, p0, Lorg/bitcoinj/core/ListMessage;->payload:[B

    array-length v2, v2

    if-gt v1, v2, :cond_4

    .line 85
    invoke-virtual {p0}, Lorg/bitcoinj/core/ListMessage;->readUint32()J

    move-result-wide v1

    long-to-int v2, v1

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x3

    if-ne v2, v1, :cond_0

    .line 99
    sget-object v1, Lorg/bitcoinj/core/InventoryItem$Type;->FilteredBlock:Lorg/bitcoinj/core/InventoryItem$Type;

    goto :goto_1

    .line 102
    :cond_0
    new-instance v0, Lorg/bitcoinj/core/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown CInv type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    sget-object v1, Lorg/bitcoinj/core/InventoryItem$Type;->Block:Lorg/bitcoinj/core/InventoryItem$Type;

    goto :goto_1

    .line 93
    :cond_2
    sget-object v1, Lorg/bitcoinj/core/InventoryItem$Type;->Transaction:Lorg/bitcoinj/core/InventoryItem$Type;

    goto :goto_1

    .line 90
    :cond_3
    sget-object v1, Lorg/bitcoinj/core/InventoryItem$Type;->Error:Lorg/bitcoinj/core/InventoryItem$Type;

    .line 104
    :goto_1
    new-instance v2, Lorg/bitcoinj/core/InventoryItem;

    invoke-virtual {p0}, Lorg/bitcoinj/core/ListMessage;->readHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/bitcoinj/core/InventoryItem;-><init>(Lorg/bitcoinj/core/InventoryItem$Type;Lorg/bitcoinj/core/Sha256Hash;)V

    .line 105
    iget-object v1, p0, Lorg/bitcoinj/core/ListMessage;->items:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_4
    new-instance v0, Lorg/bitcoinj/core/ProtocolException;

    const-string v1, "Ran off the end of the INV"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lorg/bitcoinj/core/ListMessage;->payload:[B

    return-void

    .line 76
    :cond_6
    new-instance v0, Lorg/bitcoinj/core/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many items in INV message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/bitcoinj/core/ListMessage;->arrayLen:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeItem(I)V
    .locals 3

    .line 66
    invoke-virtual {p0}, Lorg/bitcoinj/core/ListMessage;->unCache()V

    .line 67
    iget v0, p0, Lorg/bitcoinj/core/ListMessage;->length:I

    iget-object v1, p0, Lorg/bitcoinj/core/ListMessage;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/bitcoinj/core/VarInt;->sizeOf(J)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/core/ListMessage;->length:I

    .line 68
    iget-object v0, p0, Lorg/bitcoinj/core/ListMessage;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 69
    iget p1, p0, Lorg/bitcoinj/core/ListMessage;->length:I

    iget-object v0, p0, Lorg/bitcoinj/core/ListMessage;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/bitcoinj/core/VarInt;->sizeOf(J)I

    move-result v0

    add-int/lit8 v0, v0, -0x24

    add-int/2addr p1, v0

    iput p1, p0, Lorg/bitcoinj/core/ListMessage;->length:I

    return-void
.end method
