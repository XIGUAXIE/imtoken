.class public Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;
.super Ljava/io/InputStream;
.source "SSLEngineInputStream.java"


# instance fields
.field private isEOF:Z

.field private final manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

.field private final recvBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    .line 15
    invoke-virtual {p1}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->getRecvBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->recvBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private fillRecvBufferIfEmpty()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-boolean v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->isEOF:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->recvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    invoke-virtual {v0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->read()I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->isEOF:Z

    return v1

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->recvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 55
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->recvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    invoke-virtual {v0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->close()V

    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->fillRecvBufferIfEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->recvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 24
    iget-object v1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->recvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->fillRecvBufferIfEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->recvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 34
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->recvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 35
    iget-object p1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineInputStream;->recvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return p3
.end method
