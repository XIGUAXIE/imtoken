.class public Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;
.super Ljava/lang/Object;
.source "HiddenServiceManager.java"


# static fields
.field private static final HS_STREAM_TIMEOUT:I = 0x4e20

.field private static final RENDEZVOUS_RETRY_COUNT:I = 0x5

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private final hiddenServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/subgraph/orchid/circuits/hs/HiddenService;",
            ">;"
        }
    .end annotation
.end field

.field private final hsDirectories:Lcom/subgraph/orchid/circuits/hs/HSDirectories;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/circuits/CircuitManagerImpl;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->config:Lcom/subgraph/orchid/TorConfig;

    .line 32
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->directory:Lcom/subgraph/orchid/Directory;

    .line 33
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->hiddenServices:Ljava/util/Map;

    .line 34
    new-instance p1, Lcom/subgraph/orchid/circuits/hs/HSDirectories;

    invoke-direct {p1, p2}, Lcom/subgraph/orchid/circuits/hs/HSDirectories;-><init>(Lcom/subgraph/orchid/Directory;)V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->hsDirectories:Lcom/subgraph/orchid/circuits/hs/HSDirectories;

    .line 35
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    return-void
.end method

.method private createHiddenServiceFor(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HiddenService;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .line 105
    :try_start_0
    invoke-static {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->decodeOnion(Ljava/lang/String;)[B

    move-result-object v0

    .line 106
    new-instance v1, Lcom/subgraph/orchid/circuits/hs/HiddenService;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-direct {v1, v2, v0}, Lcom/subgraph/orchid/circuits/hs/HiddenService;-><init>(Lcom/subgraph/orchid/TorConfig;[B)V
    :try_end_0
    .catch Lcom/subgraph/orchid/TorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 108
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v1}, Lcom/subgraph/orchid/TorConfig;->getSafeLogging()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "[scrubbed]"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".onion"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 109
    :goto_0
    new-instance v1, Lcom/subgraph/orchid/OpenFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to decode onion address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/subgraph/orchid/TorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private downloadDescriptorFor(Lcom/subgraph/orchid/circuits/hs/HiddenService;)Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    .locals 3

    .line 87
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading HS descriptor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getOnionAddressForLogging()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->hsDirectories:Lcom/subgraph/orchid/circuits/hs/HSDirectories;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/hs/HSDirectories;->getDirectoriesForHiddenService(Lcom/subgraph/orchid/circuits/hs/HiddenService;)Ljava/util/List;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-direct {v1, p1, v2, v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;-><init>(Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Ljava/util/List;)V

    .line 90
    invoke-virtual {v1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->downloadDescriptor()Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized getCircuitTo(Lcom/subgraph/orchid/circuits/hs/HiddenService;)Lcom/subgraph/orchid/HiddenServiceCircuit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    monitor-enter p0

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getCircuit()Lcom/subgraph/orchid/HiddenServiceCircuit;

    move-result-object v0

    if-nez v0, :cond_1

    .line 51
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->openCircuitTo(Lcom/subgraph/orchid/circuits/hs/HiddenService;)Lcom/subgraph/orchid/HiddenServiceCircuit;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->setCircuit(Lcom/subgraph/orchid/HiddenServiceCircuit;)V

    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/OpenFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open circuit to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getOnionAddressForLogging()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getCircuit()Lcom/subgraph/orchid/HiddenServiceCircuit;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private openCircuitTo(Lcom/subgraph/orchid/circuits/hs/HiddenService;)Lcom/subgraph/orchid/HiddenServiceCircuit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->getDescriptorFor(Lcom/subgraph/orchid/circuits/hs/HiddenService;)Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->openRendezvousCircuit(Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/circuits/hs/HSDescriptor;)Lcom/subgraph/orchid/HiddenServiceCircuit;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_1
    new-instance v0, Lcom/subgraph/orchid/OpenFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open circuit to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getOnionAddressForLogging()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private openRendezvousCircuit(Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/circuits/hs/HSDescriptor;)Lcom/subgraph/orchid/HiddenServiceCircuit;
    .locals 3

    .line 114
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->directory:Lcom/subgraph/orchid/Directory;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->circuitManager:Lcom/subgraph/orchid/circuits/CircuitManagerImpl;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;-><init>(Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/circuits/CircuitManagerImpl;Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/circuits/hs/HSDescriptor;)V

    .line 116
    :try_start_0
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/RendezvousCircuitBuilder;->call()Lcom/subgraph/orchid/HiddenServiceCircuit;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method getDescriptorFor(Lcom/subgraph/orchid/circuits/hs/HiddenService;)Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->hasCurrentDescriptor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getDescriptor()Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    move-result-object p1

    return-object p1

    .line 76
    :cond_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->downloadDescriptorFor(Lcom/subgraph/orchid/circuits/hs/HiddenService;)Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->setDescriptor(Lcom/subgraph/orchid/circuits/hs/HSDescriptor;)V

    return-object v0

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to download HS descriptor for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getOnionAddressForLogging()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/subgraph/orchid/OpenFailedException;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getHiddenServiceForOnion(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HiddenService;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;
        }
    .end annotation

    const-string v0, ".onion"

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->hiddenServices:Ljava/util/Map;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->hiddenServices:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->hiddenServices:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->createHiddenServiceFor(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HiddenService;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->hiddenServices:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/circuits/hs/HiddenService;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 100
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getStreamTo(Ljava/lang/String;I)Lcom/subgraph/orchid/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/OpenFailedException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->getHiddenServiceForOnion(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HiddenService;

    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HiddenServiceManager;->getCircuitTo(Lcom/subgraph/orchid/circuits/hs/HiddenService;)Lcom/subgraph/orchid/HiddenServiceCircuit;

    move-result-object v0

    const-wide/16 v1, 0x4e20

    .line 43
    :try_start_0
    invoke-interface {v0, p2, v1, v2}, Lcom/subgraph/orchid/HiddenServiceCircuit;->openStream(IJ)Lcom/subgraph/orchid/Stream;

    move-result-object p1
    :try_end_0
    .catch Lcom/subgraph/orchid/StreamConnectFailedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 45
    new-instance v0, Lcom/subgraph/orchid/OpenFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open stream to hidden service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getOnionAddressForLogging()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " reason "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/subgraph/orchid/StreamConnectFailedException;->getReason()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/OpenFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
