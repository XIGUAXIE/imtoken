.class public Lcom/subgraph/orchid/directory/DirectoryStoreFile;
.super Ljava/lang/Object;
.source "DirectoryStoreFile.java"


# static fields
.field private static final EMPTY_BUFFER:Ljava/nio/ByteBuffer;

.field private static final logger:Ljava/util/logging/Logger;

.field private static final random:Lcom/subgraph/orchid/crypto/TorRandom;


# instance fields
.field private final cacheFilename:Ljava/lang/String;

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private directoryCreationFailed:Z

.field private openFile:Ljava/io/RandomAccessFile;

.field private openFileFailed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    .line 21
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 22
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    sput-object v0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/TorConfig;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->config:Lcom/subgraph/orchid/TorConfig;

    .line 34
    iput-object p2, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->cacheFilename:Ljava/lang/String;

    return-void
.end method

.method private createBufferForChannel(Ljava/nio/channels/FileChannel;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int p1, v0

    .line 128
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private createDirectoryIfMissing()V
    .locals 4

    .line 215
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->directoryCreationFailed:Z

    if-eqz v0, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 221
    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->directoryCreationFailed:Z

    .line 222
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create data directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private createTempFile()Ljava/io/File;
    .locals 6

    .line 180
    sget-object v0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorRandom;->nextLong()J

    move-result-wide v0

    .line 181
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v3}, Lcom/subgraph/orchid/TorConfig;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    return-object v2
.end method

.method private ensureOpened()Z
    .locals 3

    .line 144
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFileFailed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFile:Ljava/io/RandomAccessFile;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 150
    :cond_1
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFile()Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private fileExists()Z
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->getFile()Ljava/io/File;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private getFile()Ljava/io/File;
    .locals 3

    .line 206
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v1}, Lcom/subgraph/orchid/TorConfig;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->cacheFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private installTempFile(Ljava/io/File;)V
    .locals 4

    .line 167
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->close()V

    .line 168
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->getFile()Ljava/io/File;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 172
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to rename temp file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 175
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 176
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->ensureOpened()Z

    return-void
.end method

.method private openFile()Ljava/io/RandomAccessFile;
    .locals 3

    .line 156
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v1}, Lcom/subgraph/orchid/TorConfig;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->cacheFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->createDirectoryIfMissing()V

    .line 158
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFileFailed:Z

    .line 161
    sget-object v0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open cache file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private openFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 4

    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->createDirectoryIfMissing()V

    .line 78
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 80
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private quietClose(Ljava/io/Closeable;)V
    .locals 0

    .line 201
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private readAllFromChannel(Ljava/nio/channels/FileChannel;)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 114
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 115
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->createBufferForChannel(Ljava/nio/channels/FileChannel;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 116
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 118
    sget-object p1, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    const-string v0, "Unexpected EOF reading from cache file"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 119
    sget-object p1, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-object p1

    .line 122
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method private writeAllToChannel(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 194
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-interface {p1, p2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeDocumentsToChannel(Ljava/nio/channels/FileChannel;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/FileChannel;",
            "Ljava/util/List<",
            "+",
            "Lcom/subgraph/orchid/Document;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Document;

    .line 188
    invoke-interface {v0}, Lcom/subgraph/orchid/Document;->getRawDocumentBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->writeAllToChannel(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public appendDocuments(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/subgraph/orchid/Document;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->ensureOpened()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 92
    invoke-direct {p0, v0, p1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->writeDocumentsToChannel(Ljava/nio/channels/FileChannel;Ljava/util/List;)V

    const/4 p1, 0x1

    .line 93
    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 95
    :catch_0
    sget-object p1, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "I/O error writing to cache file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method close()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->quietClose(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFile:Ljava/io/RandomAccessFile;

    :cond_0
    return-void
.end method

.method public loadContents()Ljava/nio/ByteBuffer;
    .locals 4

    .line 101
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->fileExists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->ensureOpened()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->readAllFromChannel(Ljava/nio/channels/FileChannel;)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 108
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O error reading cache file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->cacheFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    .line 102
    :cond_1
    :goto_0
    sget-object v0, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->close()V

    .line 211
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public writeData(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 38
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->createTempFile()Ljava/io/File;

    move-result-object v0

    .line 39
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 44
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->writeAllToChannel(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 45
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->quietClose(Ljava/io/Closeable;)V

    .line 46
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->installTempFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->quietClose(Ljava/io/Closeable;)V

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 48
    :try_start_1
    sget-object v2, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I/O error writing to temporary cache file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->quietClose(Ljava/io/Closeable;)V

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    .line 51
    :goto_0
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->quietClose(Ljava/io/Closeable;)V

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw p1
.end method

.method public writeDocuments(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/subgraph/orchid/Document;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->createTempFile()Ljava/io/File;

    move-result-object v0

    .line 58
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->openFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 63
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->writeDocumentsToChannel(Ljava/nio/channels/FileChannel;Ljava/util/List;)V

    .line 64
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->quietClose(Ljava/io/Closeable;)V

    .line 65
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->installTempFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->quietClose(Ljava/io/Closeable;)V

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    :try_start_1
    sget-object v2, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I/O error writing to temporary cache file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->quietClose(Ljava/io/Closeable;)V

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    .line 70
    :goto_0
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryStoreFile;->quietClose(Ljava/io/Closeable;)V

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw p1
.end method
