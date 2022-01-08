.class public Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;
.super Ljava/io/OutputStream;
.source "SSLEngineOutputStream.java"


# instance fields
.field private final manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

.field private final outputBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;->manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    .line 14
    invoke-virtual {p1}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->getSendBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private doWrite([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 41
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 42
    iget-object p1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;->manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    invoke-virtual {p1}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->write()I

    return p3
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;->manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    invoke-virtual {v0}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->close()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;->outputBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 20
    iget-object p1, p0, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;->manager:Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;

    invoke-virtual {p1}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineManager;->write()I

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 28
    invoke-direct {p0, p1, v1, v2}, Lcom/subgraph/orchid/sockets/sslengine/SSLEngineOutputStream;->doWrite([BII)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method
