.class Lorg/bitcoinj/core/DummySerializer;
.super Lorg/bitcoinj/core/MessageSerializer;
.source "DummySerializer.java"


# static fields
.field public static final DEFAULT:Lorg/bitcoinj/core/DummySerializer;

.field private static final DEFAULT_EXCEPTION_MESSAGE:Ljava/lang/String; = "Dummy serializer cannot serialize/deserialize objects as it does not know which network they belong to."


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/bitcoinj/core/DummySerializer;

    invoke-direct {v0}, Lorg/bitcoinj/core/DummySerializer;-><init>()V

    sput-object v0, Lorg/bitcoinj/core/DummySerializer;->DEFAULT:Lorg/bitcoinj/core/DummySerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/bitcoinj/core/MessageSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/nio/ByteBuffer;)Lorg/bitcoinj/core/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 38
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dummy serializer cannot serialize/deserialize objects as it does not know which network they belong to."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deserializeHeader(Ljava/nio/ByteBuffer;)Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dummy serializer cannot serialize/deserialize objects as it does not know which network they belong to."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deserializePayload(Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;Ljava/nio/ByteBuffer;)Lorg/bitcoinj/core/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 48
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dummy serializer cannot serialize/deserialize objects as it does not know which network they belong to."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isParseRetainMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public makeAddressMessage([BI)Lorg/bitcoinj/core/AddressMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 58
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dummy serializer cannot serialize/deserialize objects as it does not know which network they belong to."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public makeAlertMessage([B)Lorg/bitcoinj/core/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 63
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dummy serializer cannot serialize/deserialize objects as it does not know which network they belong to."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public makeBlock([BII)Lorg/bitcoinj/core/Block;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 68
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dummy serializer cannot serialize/deserialize objects as it does not know which network they belong to."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public makeBloomFilter([B)Lorg/bitcoinj/core/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 73
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dummy serializer cannot serialize/deserialize objects as it does not know which network they belong to."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public makeFilteredBlock([B)Lorg/bitcoinj/core/FilteredBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 78
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dummy serializer cannot serialize/deserialize objects as it does not know which network they belong to."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public makeInventoryMessage([BI)Lorg/bitcoinj/core/InventoryMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 83
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dummy serializer cannot serialize/deserialize objects as it does not know which network they belong to."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public makeTransaction([BII[B)Lorg/bitcoinj/core/Transaction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 88
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dummy serializer cannot serialize/deserialize objects as it does not know which network they belong to."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public seekPastMagicBytes(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .line 93
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dummy serializer cannot serialize/deserialize objects as it does not know which network they belong to."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public serialize(Ljava/lang/String;[BLjava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dummy serializer cannot serialize/deserialize objects as it does not know which network they belong to."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public serialize(Lorg/bitcoinj/core/Message;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dummy serializer cannot serialize/deserialize objects as it does not know which network they belong to."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
