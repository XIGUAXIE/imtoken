.class public Lcom/subgraph/orchid/directory/downloader/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# static fields
.field private static final CHARSET:Ljava/nio/charset/Charset;

.field private static final COMPRESSION_SUFFIX:Ljava/lang/String; = ".z"

.field private static final CONTENT_ENCODING_HEADER:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_LENGTH_HEADER:Ljava/lang/String; = "Content-Length"

.field private static final HTTP_RESPONSE_REGEX:Ljava/lang/String; = "HTTP/1\\.(\\d) (\\d+) (.*)"


# instance fields
.field private bodyCompressed:Z

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hostname:Ljava/lang/String;

.field private final input:Ljava/io/InputStream;

.field private messageBody:Ljava/nio/ByteBuffer;

.field private final output:Ljava/io/OutputStream;

.field private responseCode:I

.field private responseMessage:Ljava/lang/String;

.field private final stream:Lcom/subgraph/orchid/Stream;

.field private final useCompression:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ISO-8859-1"

    .line 20
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/Stream;)V
    .locals 1

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;-><init>(Lcom/subgraph/orchid/Stream;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/Stream;Z)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->getHostnameFromStream(Lcom/subgraph/orchid/Stream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->hostname:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->stream:Lcom/subgraph/orchid/Stream;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->headers:Ljava/util/Map;

    .line 45
    invoke-interface {p1}, Lcom/subgraph/orchid/Stream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->input:Ljava/io/InputStream;

    .line 46
    invoke-interface {p1}, Lcom/subgraph/orchid/Stream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->output:Ljava/io/OutputStream;

    .line 47
    iput-boolean p2, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->useCompression:Z

    return-void
.end method

.method private bytesToBody([B)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->bodyCompressed:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->decompressBuffer([B)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 192
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private decompressBuffer([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 198
    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 200
    invoke-virtual {v1, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 203
    :goto_0
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    .line 204
    invoke-virtual {v0, v2, v3, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 208
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error decompressing http body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getHostnameFromStream(Lcom/subgraph/orchid/Stream;)Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    invoke-interface {p0}, Lcom/subgraph/orchid/Stream;->getCircuit()Lcom/subgraph/orchid/Circuit;

    move-result-object p0

    invoke-interface {p0}, Lcom/subgraph/orchid/Circuit;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object p0

    invoke-interface {p0}, Lcom/subgraph/orchid/CircuitNode;->getRouter()Lcom/subgraph/orchid/Router;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_0
    invoke-interface {p0}, Lcom/subgraph/orchid/Router;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subgraph/orchid/data/IPv4Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-interface {p0}, Lcom/subgraph/orchid/Router;->getOnionPort()I

    move-result v1

    const/16 v2, 0x50

    if-eq v1, v2, :cond_1

    const-string v1, ":"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-interface {p0}, Lcom/subgraph/orchid/Router;->getOnionPort()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private nextResponseLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->readInputLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 151
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    const-string v1, "Unexpected EOF reading HTTP response"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processContentEncodingHeader()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->headers:Ljava/util/Map;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "identity"

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "deflate"

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "x-deflate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 173
    :cond_1
    new-instance v1, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized content encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->bodyCompressed:Z

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->bodyCompressed:Z

    :goto_2
    return-void
.end method

.method private readAll([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 226
    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->input:Ljava/io/InputStream;

    invoke-virtual {v2, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 228
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected early EOF reading HTTP body"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private readBody()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->processContentEncodingHeader()V

    .line 159
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->headers:Ljava/util/Map;

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->readBodyFromContentLength()V

    goto :goto_0

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->readBodyUntilEOF()V

    :goto_0
    return-void
.end method

.method private readBodyFromContentLength()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->headers:Ljava/util/Map;

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 178
    new-array v0, v0, [B

    .line 179
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->readAll([B)V

    .line 180
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->bytesToBody([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->messageBody:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private readBodyUntilEOF()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->readToEOF()[B

    move-result-object v0

    .line 185
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->bytesToBody([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->messageBody:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private readHeaders()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 138
    :goto_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->nextResponseLine()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    const-string v2, ": "

    .line 141
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 142
    array-length v3, v2

    if-ne v3, v1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->headers:Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    :cond_1
    new-instance v1, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse HTTP header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readInputLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    int-to-char v1, v1

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private readStatusLine()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    const-string v0, "Failed to parse header: "

    .line 116
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->nextResponseLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HTTP/1\\.(\\d) (\\d+) (.*)"

    .line 117
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 118
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    .line 123
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    .line 124
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v5, :cond_0

    if-ne v5, v3, :cond_1

    :cond_0
    const/16 v3, 0x64

    if-lt v6, v3, :cond_1

    const/16 v3, 0x258

    if-ge v6, v3, :cond_1

    .line 128
    iput v6, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->responseCode:I

    .line 129
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->responseMessage:Ljava/lang/String;

    return-void

    .line 127
    :cond_1
    new-instance v2, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :catch_0
    new-instance v2, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_2
    new-instance v0, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing HTTP response line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readToEOF()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x800

    new-array v2, v1, [B

    .line 216
    :goto_0
    iget-object v3, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->input:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 217
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->stream:Lcom/subgraph/orchid/Stream;

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-interface {v0}, Lcom/subgraph/orchid/Stream;->close()V

    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->hostname:Ljava/lang/String;

    if-nez v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "(none)"

    return-object v0
.end method

.method public getMessageBody()Ljava/nio/ByteBuffer;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->messageBody:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->responseCode:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public readResponse()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->readStatusLine()V

    .line 92
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->readHeaders()V

    .line 93
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->readBody()V

    return-void
.end method

.method public sendGetRequest(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GET "

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-boolean v1, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->useCompression:Z

    if-eqz v1, :cond_0

    const-string v1, ".z"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, " HTTP/1.0\r\n"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object p1, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->hostname:Ljava/lang/String;

    const-string v1, "\r\n"

    if-eqz p1, :cond_1

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Host: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->hostname:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->output:Ljava/io/OutputStream;

    sget-object v1, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 79
    iget-object p1, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->output:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
