.class public Lcom/subgraph/orchid/circuits/cells/CellImpl;
.super Ljava/lang/Object;
.source "CellImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/Cell;


# instance fields
.field protected final cellBuffer:Ljava/nio/ByteBuffer;

.field private final circuitId:I

.field private final command:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->circuitId:I

    .line 82
    iput p2, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->command:I

    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 83
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    int-to-short p1, p1

    .line 84
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 85
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 86
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->circuitId:I

    .line 71
    iput p2, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->command:I

    add-int/lit8 v0, p3, 0x5

    .line 72
    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    int-to-short p1, p1

    .line 73
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 74
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 75
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    int-to-short p2, p3

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 76
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    .line 91
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    iput p1, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->circuitId:I

    .line 92
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->command:I

    .line 93
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    return-void
.end method

.method public static createCell(II)Lcom/subgraph/orchid/circuits/cells/CellImpl;
    .locals 1

    .line 13
    new-instance v0, Lcom/subgraph/orchid/circuits/cells/CellImpl;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/circuits/cells/CellImpl;-><init>(II)V

    return-object v0
.end method

.method public static createVarCell(III)Lcom/subgraph/orchid/circuits/cells/CellImpl;
    .locals 1

    .line 17
    new-instance v0, Lcom/subgraph/orchid/circuits/cells/CellImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/subgraph/orchid/circuits/cells/CellImpl;-><init>(III)V

    return-object v0
.end method

.method public static errorToDescription(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "Request for unknown hidden service"

    return-object p0

    :pswitch_1
    const-string p0, "The circuit was destroyed without client TRUNCATE"

    return-object p0

    :pswitch_2
    const-string p0, "Circuit construction took too long."

    return-object p0

    :pswitch_3
    const-string p0, "The circuit has expired for being dirty or old."

    return-object p0

    :pswitch_4
    const-string p0, "The OR connection that was carrying this circuit died."

    return-object p0

    :pswitch_5
    const-string p0, "Connected to server, but its OR identity was not as expected."

    return-object p0

    :pswitch_6
    const-string p0, "Unable to reach server."

    return-object p0

    :pswitch_7
    const-string p0, "Out of memory, sockets, or circuit IDs."

    return-object p0

    :pswitch_8
    const-string p0, "Not currently operating; trying to save bandwidth."

    return-object p0

    :pswitch_9
    const-string p0, "Response to a TRUNCATE command sent from client"

    return-object p0

    :pswitch_a
    const-string p0, "Internal error"

    return-object p0

    :pswitch_b
    const-string p0, "Tor protocol violation"

    return-object p0

    :pswitch_c
    const-string p0, "No error reason given"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readAll(Ljava/io/InputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->readAll(Ljava/io/InputStream;[BII)V

    return-void
.end method

.method private static readAll(Ljava/io/InputStream;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 57
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 59
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method public static readFromInputStream(Ljava/io/InputStream;)Lcom/subgraph/orchid/circuits/cells/CellImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->readHeaderFromInputStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7f

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance v2, Lcom/subgraph/orchid/circuits/cells/CellImpl;

    invoke-direct {v2, v1, v0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;-><init>(II)V

    .line 30
    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->getCellBytes()[B

    move-result-object v0

    const/4 v1, 0x3

    const/16 v3, 0x1fd

    invoke-static {p0, v0, v1, v3}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->readAll(Ljava/io/InputStream;[BII)V

    return-object v2

    .line 26
    :cond_1
    :goto_0
    invoke-static {v1, v0, p0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->readVarCell(IILjava/io/InputStream;)Lcom/subgraph/orchid/circuits/cells/CellImpl;

    move-result-object p0

    return-object p0
.end method

.method private static readHeaderFromInputStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 37
    invoke-static {p0, v0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->readAll(Ljava/io/InputStream;[B)V

    .line 38
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static readVarCell(IILjava/io/InputStream;)Lcom/subgraph/orchid/circuits/cells/CellImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 43
    invoke-static {p2, v0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->readAll(Ljava/io/InputStream;[B)V

    const/4 v1, 0x0

    .line 44
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 45
    new-instance v1, Lcom/subgraph/orchid/circuits/cells/CellImpl;

    invoke-direct {v1, p0, p1, v0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;-><init>(III)V

    .line 46
    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->getCellBytes()[B

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p2, p0, p1, v0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->readAll(Ljava/io/InputStream;[BII)V

    return-object v1
.end method


# virtual methods
.method public cellBytesConsumed()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public cellBytesRemaining()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public getByte()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getByteArray([B)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public getByteAt(I)I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public getCellBytes()[B
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public getCircuitId()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->circuitId:I

    return v0
.end method

.method public getCommand()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->command:I

    return v0
.end method

.method public getInt()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public getShort()I
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getShortAt(I)I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public putByte(I)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putByteArray([B)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putByteArray([BII)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putByteAt(II)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putInt(I)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putShort(I)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putShortAt(II)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    int-to-short p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public putString(Ljava/lang/String;)V
    .locals 3

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 162
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 163
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->putByteArray([B)V

    return-void
.end method

.method public resetToPayload()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cell: circuit_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->circuitId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->command:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " payload_len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/cells/CellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
