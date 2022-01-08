.class public final Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0006R$\u0010\u0008\u001a\u0004\u0018\u00010\u00048\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase$Companion;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;",
        "buildDatabase",
        "(Landroid/content/Context;)Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;",
        "getInstance",
        "INSTANCE",
        "Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;",
        "getINSTANCE$beacon_release",
        "()Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;",
        "setINSTANCE$beacon_release",
        "(Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;)V",
        "",
        "DATABASE_NAME",
        "Ljava/lang/String;",
        "<init>",
        "()V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase$Companion;-><init>()V

    return-void
.end method

.method private final buildDatabase(Landroid/content/Context;)Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;

    const-string v1, "chatDB"

    invoke-static {p1, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/PrePopulateRoomCallback;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/data/local/db/PrePopulateRoomCallback;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/room/RoomDatabase$Builder;->addCallback(Landroidx/room/RoomDatabase$Callback;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    const-string v0, "Room.databaseBuilder(\n  \u2026\n                .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;

    return-object p1
.end method


# virtual methods
.method public final getINSTANCE$beacon_release()Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;
    .locals 1

    invoke-static {}, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;->access$getINSTANCE$cp()Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;

    move-result-object v0

    return-object v0
.end method

.method public final getInstance(Landroid/content/Context;)Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase$Companion;->getINSTANCE$beacon_release()Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;->Companion:Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase$Companion;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase$Companion;->getINSTANCE$beacon_release()Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {v0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase$Companion;->buildDatabase(Landroid/content/Context;)Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase$Companion;->setINSTANCE$beacon_release(Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    :goto_0
    monitor-exit p0

    :goto_1
    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setINSTANCE$beacon_release(Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;)V
    .locals 0

    invoke-static {p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;->access$setINSTANCE$cp(Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;)V

    return-void
.end method
