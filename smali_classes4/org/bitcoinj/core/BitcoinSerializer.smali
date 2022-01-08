.class public Lorg/bitcoinj/core/BitcoinSerializer;
.super Lorg/bitcoinj/core/MessageSerializer;
.source "BitcoinSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;
    }
.end annotation


# static fields
.field private static final COMMAND_LEN:I = 0xc

.field private static final log:Lorg/slf4j/Logger;

.field private static final names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/bitcoinj/core/Message;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final params:Lorg/bitcoinj/core/NetworkParameters;

.field private final parseRetain:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const-class v0, Lorg/bitcoinj/core/BitcoinSerializer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->log:Lorg/slf4j/Logger;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    .line 54
    const-class v1, Lorg/bitcoinj/core/VersionMessage;

    const-string v2, "version"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lorg/bitcoinj/core/InventoryMessage;

    const-string v2, "inv"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lorg/bitcoinj/core/Block;

    const-string v2, "block"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lorg/bitcoinj/core/GetDataMessage;

    const-string v2, "getdata"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lorg/bitcoinj/core/Transaction;

    const-string v2, "tx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lorg/bitcoinj/core/AddressMessage;

    const-string v2, "addr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lorg/bitcoinj/core/Ping;

    const-string v2, "ping"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lorg/bitcoinj/core/Pong;

    const-string v2, "pong"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lorg/bitcoinj/core/VersionAck;

    const-string v2, "verack"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lorg/bitcoinj/core/GetBlocksMessage;

    const-string v2, "getblocks"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lorg/bitcoinj/core/GetHeadersMessage;

    const-string v2, "getheaders"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lorg/bitcoinj/core/GetAddrMessage;

    const-string v2, "getaddr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lorg/bitcoinj/core/HeadersMessage;

    const-string v2, "headers"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lorg/bitcoinj/core/BloomFilter;

    const-string v2, "filterload"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lorg/bitcoinj/core/FilteredBlock;

    const-string v2, "merkleblock"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lorg/bitcoinj/core/NotFoundMessage;

    const-string v2, "notfound"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lorg/bitcoinj/core/MemoryPoolMessage;

    const-string v2, "mempool"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lorg/bitcoinj/core/RejectMessage;

    const-string v2, "reject"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lorg/bitcoinj/core/GetUTXOsMessage;

    const-string v2, "getutxos"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    const-class v1, Lorg/bitcoinj/core/UTXOsMessage;

    const-string v2, "utxos"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Z)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lorg/bitcoinj/core/MessageSerializer;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    .line 84
    iput-boolean p2, p0, Lorg/bitcoinj/core/BitcoinSerializer;->parseRetain:Z

    return-void
.end method

.method private makeMessage(Ljava/lang/String;I[B[B[B)Lorg/bitcoinj/core/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const-string p5, "version"

    .line 192
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 193
    new-instance p1, Lorg/bitcoinj/core/VersionMessage;

    iget-object p2, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p1, p2, p3}, Lorg/bitcoinj/core/VersionMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    return-object p1

    :cond_0
    const-string p5, "inv"

    .line 194
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 195
    invoke-virtual {p0, p3, p2}, Lorg/bitcoinj/core/BitcoinSerializer;->makeInventoryMessage([BI)Lorg/bitcoinj/core/InventoryMessage;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    const-string p5, "block"

    .line 196
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 197
    invoke-virtual {p0, p3, p2}, Lorg/bitcoinj/core/BitcoinSerializer;->makeBlock([BI)Lorg/bitcoinj/core/Block;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    const-string p5, "merkleblock"

    .line 198
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    .line 199
    invoke-virtual {p0, p3}, Lorg/bitcoinj/core/BitcoinSerializer;->makeFilteredBlock([B)Lorg/bitcoinj/core/FilteredBlock;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    const-string p5, "getdata"

    .line 200
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    .line 201
    new-instance p1, Lorg/bitcoinj/core/GetDataMessage;

    iget-object p4, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p1, p4, p3, p0, p2}, Lorg/bitcoinj/core/GetDataMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BLorg/bitcoinj/core/MessageSerializer;I)V

    goto :goto_0

    :cond_4
    const-string p5, "getblocks"

    .line 202
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_5

    .line 203
    new-instance p1, Lorg/bitcoinj/core/GetBlocksMessage;

    iget-object p2, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p1, p2, p3}, Lorg/bitcoinj/core/GetBlocksMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    goto :goto_0

    :cond_5
    const-string p5, "getheaders"

    .line 204
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_6

    .line 205
    new-instance p1, Lorg/bitcoinj/core/GetHeadersMessage;

    iget-object p2, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p1, p2, p3}, Lorg/bitcoinj/core/GetHeadersMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    goto :goto_0

    :cond_6
    const-string p5, "tx"

    .line 206
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_7

    const/4 p1, 0x0

    .line 207
    invoke-virtual {p0, p3, p1, p2, p4}, Lorg/bitcoinj/core/BitcoinSerializer;->makeTransaction([BII[B)Lorg/bitcoinj/core/Transaction;

    move-result-object p1

    goto :goto_0

    :cond_7
    const-string p4, "addr"

    .line 208
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 209
    invoke-virtual {p0, p3, p2}, Lorg/bitcoinj/core/BitcoinSerializer;->makeAddressMessage([BI)Lorg/bitcoinj/core/AddressMessage;

    move-result-object p1

    goto :goto_0

    :cond_8
    const-string p2, "ping"

    .line 210
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 211
    new-instance p1, Lorg/bitcoinj/core/Ping;

    iget-object p2, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p1, p2, p3}, Lorg/bitcoinj/core/Ping;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    goto :goto_0

    :cond_9
    const-string p2, "pong"

    .line 212
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 213
    new-instance p1, Lorg/bitcoinj/core/Pong;

    iget-object p2, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p1, p2, p3}, Lorg/bitcoinj/core/Pong;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    :goto_0
    return-object p1

    :cond_a
    const-string p2, "verack"

    .line 214
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 215
    new-instance p1, Lorg/bitcoinj/core/VersionAck;

    iget-object p2, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p1, p2, p3}, Lorg/bitcoinj/core/VersionAck;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    return-object p1

    :cond_b
    const-string p2, "headers"

    .line 216
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 217
    new-instance p1, Lorg/bitcoinj/core/HeadersMessage;

    iget-object p2, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p1, p2, p3}, Lorg/bitcoinj/core/HeadersMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    return-object p1

    :cond_c
    const-string p2, "alert"

    .line 218
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 219
    invoke-virtual {p0, p3}, Lorg/bitcoinj/core/BitcoinSerializer;->makeAlertMessage([B)Lorg/bitcoinj/core/Message;

    move-result-object p1

    return-object p1

    :cond_d
    const-string p2, "filterload"

    .line 220
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 221
    invoke-virtual {p0, p3}, Lorg/bitcoinj/core/BitcoinSerializer;->makeBloomFilter([B)Lorg/bitcoinj/core/Message;

    move-result-object p1

    return-object p1

    :cond_e
    const-string p2, "notfound"

    .line 222
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 223
    new-instance p1, Lorg/bitcoinj/core/NotFoundMessage;

    iget-object p2, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p1, p2, p3}, Lorg/bitcoinj/core/NotFoundMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    return-object p1

    :cond_f
    const-string p2, "mempool"

    .line 224
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 225
    new-instance p1, Lorg/bitcoinj/core/MemoryPoolMessage;

    invoke-direct {p1}, Lorg/bitcoinj/core/MemoryPoolMessage;-><init>()V

    return-object p1

    :cond_10
    const-string p2, "reject"

    .line 226
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 227
    new-instance p1, Lorg/bitcoinj/core/RejectMessage;

    iget-object p2, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p1, p2, p3}, Lorg/bitcoinj/core/RejectMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    return-object p1

    :cond_11
    const-string p2, "utxos"

    .line 228
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 229
    new-instance p1, Lorg/bitcoinj/core/UTXOsMessage;

    iget-object p2, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p1, p2, p3}, Lorg/bitcoinj/core/UTXOsMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    return-object p1

    :cond_12
    const-string p2, "getutxos"

    .line 230
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 231
    new-instance p1, Lorg/bitcoinj/core/GetUTXOsMessage;

    iget-object p2, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p1, p2, p3}, Lorg/bitcoinj/core/GetUTXOsMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    return-object p1

    .line 233
    :cond_13
    sget-object p2, Lorg/bitcoinj/core/BitcoinSerializer;->log:Lorg/slf4j/Logger;

    const-string p4, "No support for deserializing message with name {}"

    invoke-interface {p2, p4, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    new-instance p2, Lorg/bitcoinj/core/UnknownMessage;

    iget-object p4, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p2, p4, p1, p3}, Lorg/bitcoinj/core/UnknownMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;[B)V

    return-object p2
.end method


# virtual methods
.method public deserialize(Ljava/nio/ByteBuffer;)Lorg/bitcoinj/core/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/BitcoinSerializer;->seekPastMagicBytes(Ljava/nio/ByteBuffer;)V

    .line 144
    new-instance v0, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;

    invoke-direct {v0, p1}, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 146
    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/BitcoinSerializer;->deserializePayload(Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;Ljava/nio/ByteBuffer;)Lorg/bitcoinj/core/Message;

    move-result-object p1

    return-object p1
.end method

.method public deserializeHeader(Ljava/nio/ByteBuffer;)Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    new-instance v0, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;

    invoke-direct {v0, p1}, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public deserializePayload(Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;Ljava/nio/ByteBuffer;)Lorg/bitcoinj/core/Message;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;,
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .line 164
    iget v0, p1, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->size:I

    new-array v0, v0, [B

    .line 165
    iget v1, p1, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->size:I

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 169
    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v5

    .line 170
    iget-object p2, p1, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->checksum:[B

    aget-byte p2, p2, v2

    aget-byte v1, v5, v2

    if-ne p2, v1, :cond_1

    iget-object p2, p1, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->checksum:[B

    const/4 v1, 0x1

    aget-byte p2, p2, v1

    aget-byte v3, v5, v1

    if-ne p2, v3, :cond_1

    iget-object p2, p1, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->checksum:[B

    const/4 v3, 0x2

    aget-byte p2, p2, v3

    aget-byte v4, v5, v3

    if-ne p2, v4, :cond_1

    iget-object p2, p1, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->checksum:[B

    const/4 v4, 0x3

    aget-byte p2, p2, v4

    aget-byte v6, v5, v4

    if-ne p2, v6, :cond_1

    .line 177
    sget-object p2, Lorg/bitcoinj/core/BitcoinSerializer;->log:Lorg/slf4j/Logger;

    invoke-interface {p2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 178
    sget-object p2, Lorg/bitcoinj/core/BitcoinSerializer;->log:Lorg/slf4j/Logger;

    new-array v4, v4, [Ljava/lang/Object;

    iget v6, p1, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->size:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    iget-object v2, p1, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->command:Ljava/lang/String;

    aput-object v2, v4, v1

    sget-object v1, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    .line 179
    invoke-virtual {v1, v0}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    const-string v1, "Received {} byte \'{}\' message: {}"

    .line 178
    invoke-interface {p2, v1, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :cond_0
    :try_start_0
    iget-object v2, p1, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->command:Ljava/lang/String;

    iget v3, p1, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->size:I

    iget-object v6, p1, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->checksum:[B

    move-object v1, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lorg/bitcoinj/core/BitcoinSerializer;->makeMessage(Ljava/lang/String;I[B[B[B)Lorg/bitcoinj/core/Message;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 185
    new-instance p2, Lorg/bitcoinj/core/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error deserializing message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v2, v0}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 172
    :cond_1
    new-instance p2, Lorg/bitcoinj/core/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checksum failed to verify, actual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    .line 173
    invoke-virtual {v1, v5}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    iget-object p1, p1, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->checksum:[B

    .line 174
    invoke-virtual {v1, p1}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getParameters()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-object v0
.end method

.method public isParseRetainMode()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Lorg/bitcoinj/core/BitcoinSerializer;->parseRetain:Z

    return v0
.end method

.method public makeAddressMessage([BI)Lorg/bitcoinj/core/AddressMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 252
    new-instance v0, Lorg/bitcoinj/core/AddressMessage;

    iget-object v1, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v0, v1, p1, p0, p2}, Lorg/bitcoinj/core/AddressMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BLorg/bitcoinj/core/MessageSerializer;I)V

    return-object v0
.end method

.method public makeAlertMessage([B)Lorg/bitcoinj/core/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 261
    new-instance v0, Lorg/bitcoinj/core/AlertMessage;

    iget-object v1, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v0, v1, p1}, Lorg/bitcoinj/core/AlertMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    return-object v0
.end method

.method public makeBlock([BII)Lorg/bitcoinj/core/Block;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 270
    new-instance v6, Lorg/bitcoinj/core/Block;

    iget-object v1, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    move-object v0, v6

    move-object v2, p1

    move v3, p2

    move-object v4, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/core/Block;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/MessageSerializer;I)V

    return-object v6
.end method

.method public makeBloomFilter([B)Lorg/bitcoinj/core/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 279
    new-instance v0, Lorg/bitcoinj/core/BloomFilter;

    iget-object v1, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v0, v1, p1}, Lorg/bitcoinj/core/BloomFilter;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    return-object v0
.end method

.method public makeFilteredBlock([B)Lorg/bitcoinj/core/FilteredBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 288
    new-instance v0, Lorg/bitcoinj/core/FilteredBlock;

    iget-object v1, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v0, v1, p1}, Lorg/bitcoinj/core/FilteredBlock;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    return-object v0
.end method

.method public makeInventoryMessage([BI)Lorg/bitcoinj/core/InventoryMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 297
    new-instance v0, Lorg/bitcoinj/core/InventoryMessage;

    iget-object v1, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v0, v1, p1, p0, p2}, Lorg/bitcoinj/core/InventoryMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BLorg/bitcoinj/core/MessageSerializer;I)V

    return-object v0
.end method

.method public makeTransaction([BII[B)Lorg/bitcoinj/core/Transaction;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 307
    new-instance v7, Lorg/bitcoinj/core/Transaction;

    iget-object v1, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v2, p1

    move v3, p2

    move-object v5, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BILorg/bitcoinj/core/Message;Lorg/bitcoinj/core/MessageSerializer;I)V

    if-eqz p4, :cond_0

    .line 309
    invoke-static {p4}, Lorg/bitcoinj/core/Sha256Hash;->wrapReversed([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {v7, p1}, Lorg/bitcoinj/core/Transaction;->setHash(Lorg/bitcoinj/core/Sha256Hash;)V

    :cond_0
    return-object v7
.end method

.method public seekPastMagicBytes(Ljava/nio/ByteBuffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    const/4 v0, 0x3

    :cond_0
    const/4 v1, 0x3

    .line 317
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    const-wide/16 v3, 0xff

    .line 320
    iget-object v5, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v5}, Lorg/bitcoinj/core/NetworkParameters;->getPacketMagic()J

    move-result-wide v5

    mul-int/lit8 v7, v1, 0x8

    ushr-long/2addr v5, v7

    and-long/2addr v3, v5

    long-to-int v4, v3

    int-to-byte v3, v4

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    return-void
.end method

.method public serialize(Ljava/lang/String;[BLjava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 93
    iget-object v1, p0, Lorg/bitcoinj/core/BitcoinSerializer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v1}, Lorg/bitcoinj/core/NetworkParameters;->getPacketMagic()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lorg/bitcoinj/core/Utils;->uint32ToByteArrayBE(J[BI)V

    const/4 v1, 0x0

    .line 97
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x4

    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_0
    array-length v1, p2

    int-to-long v1, v1

    const/16 v4, 0x10

    invoke-static {v1, v2, v0, v4}, Lorg/bitcoinj/core/Utils;->uint32ToByteArrayLE(J[BI)V

    .line 103
    invoke-static {p2}, Lorg/bitcoinj/core/Sha256Hash;->hashTwice([B)[B

    move-result-object v1

    const/16 v2, 0x14

    const/4 v4, 0x4

    .line 104
    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 106
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 108
    sget-object p3, Lorg/bitcoinj/core/BitcoinSerializer;->log:Lorg/slf4j/Logger;

    invoke-interface {p3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 109
    sget-object p3, Lorg/bitcoinj/core/BitcoinSerializer;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v2, v0}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v0, p2}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Sending {} message: {}"

    invoke-interface {p3, v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public serialize(Lorg/bitcoinj/core/Message;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    sget-object v0, Lorg/bitcoinj/core/BitcoinSerializer;->names:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p1}, Lorg/bitcoinj/core/Message;->bitcoinSerialize()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lorg/bitcoinj/core/BitcoinSerializer;->serialize(Ljava/lang/String;[BLjava/io/OutputStream;)V

    return-void

    .line 119
    :cond_0
    new-instance p2, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BitcoinSerializer doesn\'t currently know how to serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p2
.end method
