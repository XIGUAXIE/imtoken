.class public Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;
.super Ljava/lang/Object;
.source "RendezvousCircuitBuilder.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/subgraph/orchid/HiddenServiceCircuit;",
        ">;"
    }
.end annotation


# instance fields
.field private final circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private final hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

.field private final logger:Ljava/util/logging/Logger;

.field private final serviceDescriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/circuits/hs/HSDescriptor;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-class v0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logger:Ljava/util/logging/Logger;

    .line 25
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->directory:Lcom/subgraph/orchid/Directory;

    .line 26
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    .line 27
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

    .line 28
    iput-object p4, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->serviceDescriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    return-void
.end method

.method private attemptOpenIntroductionCircuit(Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)Lcom/subgraph/orchid/Circuit;
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->directory:Lcom/subgraph/orchid/Directory;

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->getIdentity()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/Directory;->getRouterByIdentity(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Router;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 89
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getCleanInternalCircuit()Lcom/subgraph/orchid/InternalCircuit;

    move-result-object v1

    .line 90
    invoke-interface {v1, p1}, Lcom/subgraph/orchid/InternalCircuit;->cannibalizeToIntroductionPoint(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/Circuit;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/subgraph/orchid/TorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 95
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannibalizeTo() failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/subgraph/orchid/TorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-object v0

    .line 92
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-object v0
.end method

.method private logServiceName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getOnionAddressForLogging()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private openIntroduction()Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->serviceDescriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->getShuffledIntroductionPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    .line 74
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->attemptOpenIntroductionCircuit(Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)Lcom/subgraph/orchid/Circuit;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 76
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

    invoke-direct {v0, v3, v2, v1}, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;-><init>(Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/Circuit;Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public call()Lcom/subgraph/orchid/HiddenServiceCircuit;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening rendezvous circuit for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/CircuitManagerImpl;->getCleanInternalCircuit()Lcom/subgraph/orchid/InternalCircuit;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Establishing rendezvous for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 37
    new-instance v1, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;-><init>(Lcom/subgraph/orchid/InternalCircuit;)V

    .line 38
    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->establishRendezvous()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 39
    invoke-interface {v0}, Lcom/subgraph/orchid/InternalCircuit;->markForClose()V

    return-object v3

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening introduction circuit for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->openIntroduction()Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;

    move-result-object v2

    if-nez v2, :cond_1

    .line 45
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logger:Ljava/util/logging/Logger;

    const-string v2, "Failed to open connection to any introduction point"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 46
    invoke-interface {v0}, Lcom/subgraph/orchid/InternalCircuit;->markForClose()V

    return-object v3

    .line 49
    :cond_1
    iget-object v4, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending introduce cell for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logServiceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 50
    new-instance v4, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;

    invoke-direct {v4}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;-><init>()V

    .line 51
    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->getServiceKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v5

    invoke-virtual {v4}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->getPublicKeyBytes()[B

    move-result-object v6

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->getCookie()[B

    move-result-object v7

    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->getRendezvousRouter()Lcom/subgraph/orchid/Router;

    move-result-object v8

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->sendIntroduce(Lcom/subgraph/orchid/crypto/TorPublicKey;[B[BLcom/subgraph/orchid/Router;)Z

    move-result v5

    .line 52
    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->markCircuitForClose()V

    if-nez v5, :cond_2

    .line 54
    invoke-interface {v0}, Lcom/subgraph/orchid/InternalCircuit;->markForClose()V

    return-object v3

    .line 57
    :cond_2
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processing RV2 for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1, v4}, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->processRendezvous2(Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;)Lcom/subgraph/orchid/HiddenServiceCircuit;

    move-result-object v1

    if-nez v1, :cond_3

    .line 60
    invoke-interface {v0}, Lcom/subgraph/orchid/InternalCircuit;->markForClose()V

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rendezvous circuit opened for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->logServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->call()Lcom/subgraph/orchid/HiddenServiceCircuit;

    move-result-object v0

    return-object v0
.end method
