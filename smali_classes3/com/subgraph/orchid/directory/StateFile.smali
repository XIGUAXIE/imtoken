.class public Lcom/subgraph/orchid/directory/StateFile;
.super Ljava/lang/Object;
.source "StateFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/directory/StateFile$Line;
    }
.end annotation


# static fields
.field private static final DATE_LENGTH:I = 0x13

.field static final KEYWORD_ENTRY_GUARD:Ljava/lang/String; = "EntryGuard"

.field static final KEYWORD_ENTRY_GUARD_ADDED_BY:Ljava/lang/String; = "EntryGuardAddedBy"

.field static final KEYWORD_ENTRY_GUARD_DOWN_SINCE:Ljava/lang/String; = "EntryGuardDownSince"

.field static final KEYWORD_ENTRY_GUARD_UNLISTED_SINCE:Ljava/lang/String; = "EntryGuardUnlistedSince"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private final directoryStore:Lcom/subgraph/orchid/DirectoryStore;

.field private final guardEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/directory/GuardEntryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Lcom/subgraph/orchid/crypto/TorRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/subgraph/orchid/directory/StateFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/StateFile;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/DirectoryStore;Lcom/subgraph/orchid/Directory;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    .line 31
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/StateFile;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/StateFile;->dateFormat:Ljava/text/DateFormat;

    .line 101
    iput-object p1, p0, Lcom/subgraph/orchid/directory/StateFile;->directoryStore:Lcom/subgraph/orchid/DirectoryStore;

    .line 102
    iput-object p2, p0, Lcom/subgraph/orchid/directory/StateFile;->directory:Lcom/subgraph/orchid/Directory;

    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/directory/StateFile;)Ljava/text/DateFormat;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/subgraph/orchid/directory/StateFile;->dateFormat:Ljava/text/DateFormat;

    return-object p0
.end method

.method private addEntryIfValid(Lcom/subgraph/orchid/directory/GuardEntryImpl;)V
    .locals 1

    .line 267
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/StateFile;->isValidEntry(Lcom/subgraph/orchid/directory/GuardEntryImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 268
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/directory/StateFile;->addGuardEntry(Lcom/subgraph/orchid/GuardEntry;Z)V

    :cond_0
    return-void
.end method

.method private addGuardEntry(Lcom/subgraph/orchid/GuardEntry;Z)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    monitor-exit v0

    return-void

    .line 142
    :cond_0
    check-cast p1, Lcom/subgraph/orchid/directory/GuardEntryImpl;

    .line 143
    iget-object v1, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    :try_start_1
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->setAddedFlag()V

    if-eqz p2, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/StateFile;->writeFile()V

    .line 149
    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p2

    .line 149
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2

    :catchall_1
    move-exception p1

    .line 150
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method private isValidEntry(Lcom/subgraph/orchid/directory/GuardEntryImpl;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->getNickname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->getIdentity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->getCreatedTime()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private loadGuardEntries(Ljava/nio/ByteBuffer;)V
    .locals 2

    const/4 v0, 0x0

    .line 177
    :goto_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/StateFile;->readLine(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/StateFile$Line;

    move-result-object v1

    if-nez v1, :cond_0

    .line 179
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/StateFile;->addEntryIfValid(Lcom/subgraph/orchid/directory/GuardEntryImpl;)V

    return-void

    .line 182
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/subgraph/orchid/directory/StateFile;->processLine(Lcom/subgraph/orchid/directory/StateFile$Line;Lcom/subgraph/orchid/directory/GuardEntryImpl;)Lcom/subgraph/orchid/directory/GuardEntryImpl;

    move-result-object v0

    goto :goto_0
.end method

.method private processEntryGuardAddedBy(Lcom/subgraph/orchid/directory/StateFile$Line;Lcom/subgraph/orchid/directory/GuardEntryImpl;)V
    .locals 2

    if-nez p2, :cond_0

    .line 224
    sget-object p1, Lcom/subgraph/orchid/directory/StateFile;->logger:Ljava/util/logging/Logger;

    const-string p2, "EntryGuardAddedBy line seen before EntryGuard in state file"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 227
    :cond_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/StateFile$Line;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/StateFile$Line;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/StateFile$Line;->parseDate()Ljava/util/Date;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 230
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p2, v1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->setVersion(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2, p1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->setCreatedTime(Ljava/util/Date;)V

    return-void

    .line 231
    :cond_2
    :goto_0
    sget-object p1, Lcom/subgraph/orchid/directory/StateFile;->logger:Ljava/util/logging/Logger;

    const-string p2, "Missing EntryGuardAddedBy field in state file"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method private processEntryGuardDownSince(Lcom/subgraph/orchid/directory/StateFile$Line;Lcom/subgraph/orchid/directory/GuardEntryImpl;)V
    .locals 1

    if-nez p2, :cond_0

    .line 240
    sget-object p1, Lcom/subgraph/orchid/directory/StateFile;->logger:Ljava/util/logging/Logger;

    const-string p2, "EntryGuardDownSince line seen before EntryGuard in state file"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 244
    :cond_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/StateFile$Line;->parseDate()Ljava/util/Date;

    move-result-object v0

    .line 245
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/StateFile$Line;->parseDate()Ljava/util/Date;

    move-result-object p1

    if-nez v0, :cond_1

    .line 247
    sget-object p1, Lcom/subgraph/orchid/directory/StateFile;->logger:Ljava/util/logging/Logger;

    const-string p2, "Failed to parse date field in EntryGuardDownSince line in state file"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 250
    :cond_1
    invoke-virtual {p2, v0, p1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->setDownSince(Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method private processEntryGuardLine(Lcom/subgraph/orchid/directory/StateFile$Line;)Lcom/subgraph/orchid/directory/GuardEntryImpl;
    .locals 3

    .line 213
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/StateFile$Line;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/StateFile$Line;->nextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    new-instance p1, Lcom/subgraph/orchid/directory/GuardEntryImpl;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/StateFile;->directory:Lcom/subgraph/orchid/Directory;

    invoke-direct {p1, v2, p0, v0, v1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;-><init>(Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/directory/StateFile;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 216
    :cond_1
    :goto_0
    sget-object v0, Lcom/subgraph/orchid/directory/StateFile;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse EntryGuard line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/subgraph/orchid/directory/StateFile$Line;->line:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private processEntryGuardUnlistedSince(Lcom/subgraph/orchid/directory/StateFile$Line;Lcom/subgraph/orchid/directory/GuardEntryImpl;)V
    .locals 0

    if-nez p2, :cond_0

    .line 255
    sget-object p1, Lcom/subgraph/orchid/directory/StateFile;->logger:Ljava/util/logging/Logger;

    const-string p2, "EntryGuardUnlistedSince line seen before EntryGuard in state file"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 258
    :cond_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/StateFile$Line;->parseDate()Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_1

    .line 260
    sget-object p1, Lcom/subgraph/orchid/directory/StateFile;->logger:Ljava/util/logging/Logger;

    const-string p2, "Failed to parse date field in EntryGuardUnlistedSince line in state file"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 263
    :cond_1
    invoke-virtual {p2, p1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->setUnlistedSince(Ljava/util/Date;)V

    return-void
.end method

.method private processLine(Lcom/subgraph/orchid/directory/StateFile$Line;Lcom/subgraph/orchid/directory/GuardEntryImpl;)Lcom/subgraph/orchid/directory/GuardEntryImpl;
    .locals 2

    .line 187
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/StateFile$Line;->nextToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    const-string v1, "EntryGuard"

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    invoke-direct {p0, p2}, Lcom/subgraph/orchid/directory/StateFile;->addEntryIfValid(Lcom/subgraph/orchid/directory/GuardEntryImpl;)V

    .line 192
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/StateFile;->processEntryGuardLine(Lcom/subgraph/orchid/directory/StateFile$Line;)Lcom/subgraph/orchid/directory/GuardEntryImpl;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    return-object p1

    :cond_2
    const-string v1, "EntryGuardAddedBy"

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/directory/StateFile;->processEntryGuardAddedBy(Lcom/subgraph/orchid/directory/StateFile$Line;Lcom/subgraph/orchid/directory/GuardEntryImpl;)V

    return-object p2

    :cond_3
    const-string v1, "EntryGuardDownSince"

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/directory/StateFile;->processEntryGuardDownSince(Lcom/subgraph/orchid/directory/StateFile$Line;Lcom/subgraph/orchid/directory/GuardEntryImpl;)V

    return-object p2

    :cond_4
    const-string v1, "EntryGuardUnlistedSince"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/directory/StateFile;->processEntryGuardUnlistedSince(Lcom/subgraph/orchid/directory/StateFile$Line;Lcom/subgraph/orchid/directory/GuardEntryImpl;)V

    :cond_5
    return-object p2
.end method

.method private readLine(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/StateFile$Line;
    .locals 3

    .line 281
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 287
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 289
    new-instance p1, Lcom/subgraph/orchid/directory/StateFile$Line;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/subgraph/orchid/directory/StateFile$Line;-><init>(Lcom/subgraph/orchid/directory/StateFile;Ljava/lang/String;)V

    return-object p1

    :cond_2
    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 294
    :cond_3
    new-instance p1, Lcom/subgraph/orchid/directory/StateFile$Line;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/subgraph/orchid/directory/StateFile$Line;-><init>(Lcom/subgraph/orchid/directory/StateFile;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public addGuardEntry(Lcom/subgraph/orchid/GuardEntry;)V
    .locals 1

    const/4 v0, 0x1

    .line 134
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/directory/StateFile;->addGuardEntry(Lcom/subgraph/orchid/GuardEntry;Z)V

    return-void
.end method

.method public createGuardEntryFor(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/GuardEntry;
    .locals 7

    .line 106
    new-instance v0, Lcom/subgraph/orchid/directory/GuardEntryImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/StateFile;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/subgraph/orchid/data/HexDigest;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;-><init>(Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/directory/StateFile;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/subgraph/orchid/Tor;->getImplementation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/subgraph/orchid/Tor;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->setVersion(Ljava/lang/String;)V

    .line 115
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object p1, p0, Lcom/subgraph/orchid/directory/StateFile;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    const v3, 0x278d00

    invoke-virtual {p1, v3}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result p1

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    sub-long/2addr v1, v3

    .line 116
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->setCreatedTime(Ljava/util/Date;)V

    return-object v0
.end method

.method formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/subgraph/orchid/directory/StateFile;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getFileContents()Ljava/nio/ByteBuffer;
    .locals 4

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    iget-object v1, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/directory/GuardEntryImpl;

    .line 161
    invoke-virtual {v3}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->writeToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 163
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/subgraph/orchid/Tor;->getDefaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 163
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getGuardEntries()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/GuardEntry;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    monitor-enter v0

    .line 122
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 123
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method parseBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 170
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/StateFile;->loadGuardEntries(Ljava/nio/ByteBuffer;)V

    .line 171
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeGuardEntry(Lcom/subgraph/orchid/GuardEntry;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/StateFile;->writeFile()V

    .line 130
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method writeFile()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/subgraph/orchid/directory/StateFile;->directoryStore:Lcom/subgraph/orchid/DirectoryStore;

    sget-object v1, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->STATE:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/StateFile;->getFileContents()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/subgraph/orchid/DirectoryStore;->writeData(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Ljava/nio/ByteBuffer;)V

    return-void
.end method
