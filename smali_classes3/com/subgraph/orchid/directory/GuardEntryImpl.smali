.class public Lcom/subgraph/orchid/directory/GuardEntryImpl;
.super Ljava/lang/Object;
.source "GuardEntryImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/GuardEntry;


# static fields
.field private static final NL:Ljava/lang/String;


# instance fields
.field private createdTime:Ljava/util/Date;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private downSince:Ljava/util/Date;

.field private final identity:Ljava/lang/String;

.field private isAdded:Z

.field private lastConnect:Ljava/util/Date;

.field private final lock:Ljava/lang/Object;

.field private final nickname:Ljava/lang/String;

.field private final stateFile:Lcom/subgraph/orchid/directory/StateFile;

.field private unlistedSince:Ljava/util/Date;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 11
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->NL:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/directory/StateFile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->lock:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->directory:Lcom/subgraph/orchid/Directory;

    .line 28
    iput-object p2, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->stateFile:Lcom/subgraph/orchid/directory/StateFile;

    .line 29
    iput-object p3, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->nickname:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->identity:Ljava/lang/String;

    return-void
.end method

.method private appendEntryGuardAddedBy(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, "EntryGuardAddedBy"

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->identity:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->version:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->createdTime:Ljava/util/Date;

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    sget-object v0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->NL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendEntryGuardDownSince(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->downSince:Ljava/util/Date;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "EntryGuardDownSince"

    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->downSince:Ljava/util/Date;

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->lastConnect:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->lastConnect:Ljava/util/Date;

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_1
    sget-object v0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->NL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendEntryGuardLine(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, "EntryGuard"

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->nickname:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->identity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    sget-object v0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->NL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendEntryGuardUnlistedSince(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->unlistedSince:Ljava/util/Date;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "EntryGuardUnlistedSince"

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->unlistedSince:Ljava/util/Date;

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    sget-object v0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->NL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private dup(Ljava/util/Date;)Ljava/util/Date;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 135
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method private formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->stateFile:Lcom/subgraph/orchid/directory/StateFile;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/StateFile;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized markUnusable()V
    .locals 2

    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 233
    :try_start_1
    iget-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->unlistedSince:Ljava/util/Date;

    if-nez v1, :cond_0

    .line 234
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->unlistedSince:Ljava/util/Date;

    .line 235
    iget-boolean v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->isAdded:Z

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->stateFile:Lcom/subgraph/orchid/directory/StateFile;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/StateFile;->writeFile()V

    .line 239
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 239
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private markUsable()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->unlistedSince:Ljava/util/Date;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 223
    iput-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->unlistedSince:Ljava/util/Date;

    .line 224
    iget-boolean v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->isAdded:Z

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->stateFile:Lcom/subgraph/orchid/directory/StateFile;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/StateFile;->writeFile()V

    .line 228
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public clearDownSince()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 78
    :try_start_0
    iput-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->downSince:Ljava/util/Date;

    .line 79
    iput-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->lastConnect:Ljava/util/Date;

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->isAdded:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->stateFile:Lcom/subgraph/orchid/directory/StateFile;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/StateFile;->writeFile()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 80
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clearUnlistedSince()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 88
    :try_start_0
    iput-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->unlistedSince:Ljava/util/Date;

    .line 89
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->isAdded:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->stateFile:Lcom/subgraph/orchid/directory/StateFile;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/StateFile;->writeFile()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 89
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 259
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 261
    :cond_2
    check-cast p1, Lcom/subgraph/orchid/directory/GuardEntryImpl;

    .line 262
    iget-object v2, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->identity:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 263
    iget-object v2, p1, Lcom/subgraph/orchid/directory/GuardEntryImpl;->identity:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 265
    :cond_3
    iget-object v3, p1, Lcom/subgraph/orchid/directory/GuardEntryImpl;->identity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 267
    :cond_4
    iget-object v2, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->nickname:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 268
    iget-object p1, p1, Lcom/subgraph/orchid/directory/GuardEntryImpl;->nickname:Ljava/lang/String;

    if-eqz p1, :cond_6

    return v1

    .line 270
    :cond_5
    iget-object p1, p1, Lcom/subgraph/orchid/directory/GuardEntryImpl;->nickname:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getCreatedTime()Ljava/util/Date;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->createdTime:Ljava/util/Date;

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->dup(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDownSince()Ljava/util/Date;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->downSince:Ljava/util/Date;

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->dup(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public getLastConnectAttempt()Ljava/util/Date;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->lastConnect:Ljava/util/Date;

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->dup(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRouterForEntry()Lcom/subgraph/orchid/Router;
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->identity:Ljava/lang/String;

    invoke-static {v0}, Lcom/subgraph/orchid/data/HexDigest;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v1, v0}, Lcom/subgraph/orchid/Directory;->getRouterByIdentity(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Router;

    move-result-object v0

    return-object v0
.end method

.method public getUnlistedSince()Ljava/util/Date;
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->unlistedSince:Ljava/util/Date;

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->dup(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->identity:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 248
    iget-object v2, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->nickname:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    .line 249
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isAdded()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->isAdded:Z

    return v0
.end method

.method public markAsDown()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 65
    iget-object v2, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->downSince:Ljava/util/Date;

    if-nez v2, :cond_0

    .line 66
    iput-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->downSince:Ljava/util/Date;

    goto :goto_0

    .line 68
    :cond_0
    iput-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->lastConnect:Ljava/util/Date;

    .line 70
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->isAdded:Z

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->stateFile:Lcom/subgraph/orchid/directory/StateFile;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/StateFile;->writeFile()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 70
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setAddedFlag()V
    .locals 1

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->isAdded:Z

    return-void
.end method

.method setCreatedTime(Ljava/util/Date;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->createdTime:Ljava/util/Date;

    return-void
.end method

.method setDownSince(Ljava/util/Date;Ljava/util/Date;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    iput-object p1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->downSince:Ljava/util/Date;

    .line 54
    iput-object p2, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->lastConnect:Ljava/util/Date;

    .line 55
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setUnlistedSince(Ljava/util/Date;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    iput-object p1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->unlistedSince:Ljava/util/Date;

    .line 48
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setVersion(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->version:Ljava/lang/String;

    return-void
.end method

.method public testCurrentlyUsable()Z
    .locals 4

    .line 209
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->getRouterForEntry()Lcom/subgraph/orchid/Router;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 210
    invoke-interface {v0}, Lcom/subgraph/orchid/Router;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/subgraph/orchid/Router;->isPossibleGuard()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/subgraph/orchid/Router;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 212
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->markUsable()V

    return v1

    .line 215
    :cond_1
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->markUnusable()V

    return v2
.end method

.method public writeToString()Ljava/lang/String;
    .locals 3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->appendEntryGuardLine(Ljava/lang/StringBuilder;)V

    .line 143
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->appendEntryGuardAddedBy(Ljava/lang/StringBuilder;)V

    .line 144
    iget-object v2, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->downSince:Ljava/util/Date;

    if-eqz v2, :cond_0

    .line 145
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->appendEntryGuardDownSince(Ljava/lang/StringBuilder;)V

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/subgraph/orchid/directory/GuardEntryImpl;->unlistedSince:Ljava/util/Date;

    if-eqz v2, :cond_1

    .line 148
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->appendEntryGuardUnlistedSince(Ljava/lang/StringBuilder;)V

    .line 150
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 150
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
