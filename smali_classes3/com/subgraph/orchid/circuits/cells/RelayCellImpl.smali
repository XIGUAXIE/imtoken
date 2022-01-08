.class public Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;
.super Lcom/subgraph/orchid/circuits/cells/CellImpl;
.source "RelayCellImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/RelayCell;


# instance fields
.field private final circuitNode:Lcom/subgraph/orchid/CircuitNode;

.field private final isOutgoing:Z

.field private final relayCommand:I

.field private final streamId:I


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/CircuitNode;III)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;-><init>(Lcom/subgraph/orchid/CircuitNode;IIIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/CircuitNode;IIIZ)V
    .locals 0

    if-eqz p5, :cond_0

    const/16 p5, 0x9

    goto :goto_0

    :cond_0
    const/4 p5, 0x3

    .line 38
    :goto_0
    invoke-direct {p0, p2, p5}, Lcom/subgraph/orchid/circuits/cells/CellImpl;-><init>(II)V

    .line 39
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->circuitNode:Lcom/subgraph/orchid/CircuitNode;

    .line 40
    iput p4, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->relayCommand:I

    .line 41
    iput p3, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->streamId:I

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->isOutgoing:Z

    .line 43
    invoke-virtual {p0, p4}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->putByte(I)V

    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->putShort(I)V

    .line 45
    invoke-virtual {p0, p3}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->putShort(I)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->putInt(I)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->putShort(I)V

    return-void
.end method

.method private constructor <init>(Lcom/subgraph/orchid/CircuitNode;[B)V
    .locals 1

    .line 51
    invoke-direct {p0, p2}, Lcom/subgraph/orchid/circuits/cells/CellImpl;-><init>([B)V

    .line 52
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->circuitNode:Lcom/subgraph/orchid/CircuitNode;

    .line 53
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->getByte()I

    move-result p1

    iput p1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->relayCommand:I

    .line 54
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->getShort()I

    .line 55
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->getShort()I

    move-result p1

    iput p1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->streamId:I

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->isOutgoing:Z

    .line 57
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->getInt()I

    .line 58
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->getShort()I

    move-result p1

    .line 59
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    add-int/lit8 p1, p1, 0xe

    .line 60
    array-length p2, p2

    if-gt p1, p2, :cond_0

    .line 62
    iget-object p2, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void

    .line 61
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/TorException;

    const-string p2, "Header length field exceeds total size of cell"

    invoke-direct {p1, p2}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static commandToDescription(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Relay command = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "RELAY_EXTENDED2"

    return-object p0

    :pswitch_1
    const-string p0, "RELAY_EXTEND2"

    return-object p0

    :pswitch_2
    const-string p0, "RELAY_BEGIN_DIR"

    return-object p0

    :pswitch_3
    const-string p0, "RELAY_RESOLVED"

    return-object p0

    :pswitch_4
    const-string p0, "RELAY_RESOLVE"

    return-object p0

    :pswitch_5
    const-string p0, "RELAY_DROP"

    return-object p0

    :pswitch_6
    const-string p0, "RELAY_TRUNCATED"

    return-object p0

    :pswitch_7
    const-string p0, "RELAY_TRUNCATE"

    return-object p0

    :pswitch_8
    const-string p0, "RELAY_EXTENDED"

    return-object p0

    :pswitch_9
    const-string p0, "RELAY_EXTEND"

    return-object p0

    :pswitch_a
    const-string p0, "RELAY_SENDME"

    return-object p0

    :pswitch_b
    const-string p0, "RELAY_CONNECTED"

    return-object p0

    :pswitch_c
    const-string p0, "RELAY_END"

    return-object p0

    :pswitch_d
    const-string p0, "RELAY_DATA"

    return-object p0

    :pswitch_e
    const-string p0, "RELAY_BEGIN"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
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

.method public static createFromCell(Lcom/subgraph/orchid/CircuitNode;Lcom/subgraph/orchid/Cell;)Lcom/subgraph/orchid/RelayCell;
    .locals 2

    .line 13
    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCommand()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 15
    new-instance v0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCellBytes()[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;-><init>(Lcom/subgraph/orchid/CircuitNode;[B)V

    return-object v0

    .line 14
    :cond_0
    new-instance p0, Lcom/subgraph/orchid/TorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to create RelayCell from Cell type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getCommand()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static reasonToDescription(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 140
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reason code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "Client sent RELAY_BEGIN_DIR to a non-directory server."

    return-object p0

    :pswitch_2
    const-string p0, "Tor protocol violation"

    return-object p0

    :pswitch_3
    const-string p0, "Connection was unexpectedly reset"

    return-object p0

    :pswitch_4
    const-string p0, "OR has no resources to fulfill request"

    return-object p0

    :pswitch_5
    const-string p0, "Internal error at the OR"

    return-object p0

    :pswitch_6
    const-string p0, "OR is temporarily hibernating"

    return-object p0

    :pswitch_7
    const-string p0, "Connection timed out, or OR timed out while connecting"

    return-object p0

    :pswitch_8
    const-string p0, "Anonymized TCP connection was closed"

    return-object p0

    :pswitch_9
    const-string p0, "Circuit is being destroyed"

    return-object p0

    :pswitch_a
    const-string p0, "OR refuses to connect to host or port"

    return-object p0

    :pswitch_b
    const-string p0, "Remote host refused connection"

    return-object p0

    :pswitch_c
    const-string p0, "Couldn\'t look up hostname"

    return-object p0

    :pswitch_d
    const-string p0, "Unlisted reason"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public commandToString()Ljava/lang/String;
    .locals 5

    .line 100
    iget v0, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->relayCommand:I

    const-string v1, ")"

    const-string v2, " ("

    const/16 v3, 0xe

    const/16 v4, 0x9

    if-ne v0, v4, :cond_0

    .line 101
    invoke-virtual {p0, v3}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->getByteAt(I)I

    move-result v0

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->relayCommand:I

    invoke-static {v4}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->commandToDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->errorToDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 104
    invoke-virtual {p0, v3}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->getByteAt(I)I

    move-result v0

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->relayCommand:I

    invoke-static {v4}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->commandToDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->reasonToDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 108
    :cond_1
    invoke-static {v0}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->commandToDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCircuitNode()Lcom/subgraph/orchid/CircuitNode;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->circuitNode:Lcom/subgraph/orchid/CircuitNode;

    return-object v0
.end method

.method public getPayloadBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 85
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getRelayCommand()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->relayCommand:I

    return v0
.end method

.method public getStreamId()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->streamId:I

    return v0
.end method

.method public setDigest([B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x8

    .line 79
    aget-byte v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->putByteAt(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLength()V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->cellBytesConsumed()I

    move-result v0

    add-int/lit8 v0, v0, -0xe

    int-to-short v0, v0

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->putShortAt(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 93
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->isOutgoing:Z

    const-string v1, "]"

    const-string v2, " payload_len="

    const-string v3, " stream="

    const-string v4, "["

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->relayCommand:I

    invoke-static {v4}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->commandToDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->streamId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->cellBytesConsumed()I

    move-result v2

    add-int/lit8 v2, v2, -0xe

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dest="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->circuitNode:Lcom/subgraph/orchid/CircuitNode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->commandToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->streamId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->cellBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " source="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->circuitNode:Lcom/subgraph/orchid/CircuitNode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
