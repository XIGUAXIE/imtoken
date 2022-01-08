.class public Lcom/subgraph/orchid/circuits/CircuitExtender;
.super Ljava/lang/Object;
.source "CircuitExtender.java"


# static fields
.field private static final CIPHER_KEY_LEN:I = 0x10

.field private static final DH_BYTES:I = 0x80

.field private static final PKCS1_OAEP_PADDING_OVERHEAD:I = 0x2a

.field static final TAP_ONIONSKIN_LEN:I = 0xba

.field static final TAP_ONIONSKIN_REPLY_LEN:I = 0x94

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

.field private final ntorEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/subgraph/orchid/circuits/CircuitExtender;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/CircuitExtender;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/circuits/CircuitImpl;Z)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    .line 33
    iput-boolean p2, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->ntorEnabled:Z

    return-void
.end method

.method private logProtocolViolation(Ljava/lang/String;Lcom/subgraph/orchid/Router;)V
    .locals 4

    const-string v0, "(none)"

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 92
    :cond_0
    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getVersion()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_1
    sget-object p2, Lcom/subgraph/orchid/circuits/CircuitExtender;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Protocol error extending circuit from ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") to ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") [version: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method private nodeToName(Lcom/subgraph/orchid/CircuitNode;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 98
    invoke-interface {p1}, Lcom/subgraph/orchid/CircuitNode;->getRouter()Lcom/subgraph/orchid/Router;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-interface {p1}, Lcom/subgraph/orchid/CircuitNode;->getRouter()Lcom/subgraph/orchid/Router;

    move-result-object p1

    .line 102
    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "(null)"

    return-object p1
.end method

.method private processCreatedFastCell(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/Cell;Lcom/subgraph/orchid/crypto/TorKeyAgreement;)Lcom/subgraph/orchid/CircuitNode;
    .locals 3

    const/16 v0, 0x28

    new-array v0, v0, [B

    const/16 v1, 0x48

    new-array v1, v1, [B

    const/16 v2, 0x14

    new-array v2, v2, [B

    .line 63
    invoke-interface {p2, v0}, Lcom/subgraph/orchid/Cell;->getByteArray([B)V

    .line 64
    invoke-interface {p3, v0, v1, v2}, Lcom/subgraph/orchid/crypto/TorKeyAgreement;->deriveKeysFromHandshakeResponse([B[B[B)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 68
    :cond_0
    invoke-static {p1, v1, v2}, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->createFirstHop(Lcom/subgraph/orchid/Router;[B[B)Lcom/subgraph/orchid/CircuitNode;

    move-result-object p1

    .line 69
    iget-object p2, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {p2, p1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->appendNode(Lcom/subgraph/orchid/CircuitNode;)V

    return-object p1
.end method

.method private receiveAndProcessCreateFastResponse(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/crypto/TorKeyAgreement;)Lcom/subgraph/orchid/CircuitNode;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->receiveControlCellResponse()Lcom/subgraph/orchid/Cell;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0, p1, v0, p2}, Lcom/subgraph/orchid/circuits/CircuitExtender;->processCreatedFastCell(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/Cell;Lcom/subgraph/orchid/crypto/TorKeyAgreement;)Lcom/subgraph/orchid/CircuitNode;

    move-result-object p1

    return-object p1

    .line 53
    :cond_0
    new-instance p2, Lcom/subgraph/orchid/TorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout building circuit waiting for CREATE_FAST response from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private sendCreateFastCell(Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getCircuitId()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->createCell(II)Lcom/subgraph/orchid/circuits/cells/CellImpl;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;->createOnionSkin()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/Cell;->putByteArray([B)V

    .line 47
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->sendCell(Lcom/subgraph/orchid/Cell;)V

    return-void
.end method

.method private useNtor(Lcom/subgraph/orchid/Router;)Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->ntorEnabled:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getNTorOnionKey()[B

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method createFastTo(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/CircuitNode;
    .locals 3

    .line 38
    sget-object v0, Lcom/subgraph/orchid/circuits/CircuitExtender;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating \'fast\' to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;-><init>()V

    .line 40
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitExtender;->sendCreateFastCell(Lcom/subgraph/orchid/crypto/TorCreateFastKeyAgreement;)V

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/circuits/CircuitExtender;->receiveAndProcessCreateFastResponse(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/crypto/TorKeyAgreement;)Lcom/subgraph/orchid/CircuitNode;

    move-result-object p1

    return-object p1
.end method

.method public createNewNode(Lcom/subgraph/orchid/Router;[B[B)Lcom/subgraph/orchid/CircuitNode;
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v0

    invoke-static {p1, v0, p2, p3}, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->createNode(Lcom/subgraph/orchid/Router;Lcom/subgraph/orchid/CircuitNode;[B[B)Lcom/subgraph/orchid/CircuitNode;

    move-result-object p2

    .line 137
    sget-object p3, Lcom/subgraph/orchid/circuits/CircuitExtender;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding new circuit node for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {p1, p2}, Lcom/subgraph/orchid/circuits/CircuitImpl;->appendNode(Lcom/subgraph/orchid/CircuitNode;)V

    return-object p2
.end method

.method public createRelayCell(I)Lcom/subgraph/orchid/RelayCell;
    .locals 7

    .line 144
    new-instance v6, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getCircuitId()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;-><init>(Lcom/subgraph/orchid/CircuitNode;IIIZ)V

    return-object v6
.end method

.method extendTo(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/CircuitNode;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getCircuitLength()I

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/CircuitExtender;->useNtor(Lcom/subgraph/orchid/Router;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;-><init>(Lcom/subgraph/orchid/circuits/CircuitExtender;Lcom/subgraph/orchid/Router;)V

    .line 80
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/NTorCircuitExtender;->extendTo()Lcom/subgraph/orchid/CircuitNode;

    move-result-object p1

    return-object p1

    .line 82
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;

    invoke-direct {v0, p0, p1}, Lcom/subgraph/orchid/circuits/TapCircuitExtender;-><init>(Lcom/subgraph/orchid/circuits/CircuitExtender;Lcom/subgraph/orchid/Router;)V

    .line 83
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->extendTo()Lcom/subgraph/orchid/CircuitNode;

    move-result-object p1

    return-object p1

    .line 75
    :cond_1
    new-instance p1, Lcom/subgraph/orchid/TorException;

    const-string v0, "Cannot EXTEND an empty circuit"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getFinalRouter()Lcom/subgraph/orchid/Router;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Lcom/subgraph/orchid/CircuitNode;->getRouter()Lcom/subgraph/orchid/Router;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public receiveRelayResponse(ILcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/RelayCell;
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitImpl;->receiveRelayCell()Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 116
    invoke-interface {v0}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 118
    invoke-interface {v0}, Lcom/subgraph/orchid/RelayCell;->getByte()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    .line 119
    invoke-static {p1}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->errorToDescription(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-interface {v0}, Lcom/subgraph/orchid/RelayCell;->getCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/CircuitExtender;->nodeToName(Lcom/subgraph/orchid/CircuitNode;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 122
    invoke-direct {p0, v0, p2}, Lcom/subgraph/orchid/circuits/CircuitExtender;->logProtocolViolation(Ljava/lang/String;Lcom/subgraph/orchid/Router;)V

    .line 124
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/TorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error from ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") while extending to ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ne v1, p1, :cond_2

    return-object v0

    .line 126
    :cond_2
    invoke-static {p1}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->commandToDescription(I)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-static {v1}, Lcom/subgraph/orchid/circuits/cells/RelayCellImpl;->commandToDescription(I)Ljava/lang/String;

    move-result-object p2

    .line 128
    new-instance v0, Lcom/subgraph/orchid/TorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received incorrect extend response, expecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but received "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_3
    new-instance p1, Lcom/subgraph/orchid/TorException;

    const-string p2, "Timeout building circuit"

    invoke-direct {p1, p2}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendRelayCell(Lcom/subgraph/orchid/RelayCell;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/CircuitExtender;->circuit:Lcom/subgraph/orchid/circuits/CircuitImpl;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/CircuitImpl;->sendRelayCell(Lcom/subgraph/orchid/RelayCell;)V

    return-void
.end method
