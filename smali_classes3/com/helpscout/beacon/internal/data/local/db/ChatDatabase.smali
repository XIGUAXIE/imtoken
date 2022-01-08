.class public abstract Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\'\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH&\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0013\u0010\u0012\u001a\u00020\u0011H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0013\u0010\u0015\u001a\u00020\u0011H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0013\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;",
        "Landroidx/room/RoomDatabase;",
        "Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;",
        "chatEnvelopeDao",
        "()Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;",
        "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;",
        "chatEventDao",
        "()Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;",
        "Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;",
        "attachmentDao",
        "()Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;",
        "Lcom/helpscout/beacon/internal/data/local/db/UserDao;",
        "userDao",
        "()Lcom/helpscout/beacon/internal/data/local/db/UserDao;",
        "Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao;",
        "unfurledMediaDao",
        "()Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao;",
        "",
        "reset",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "prePopulate$beacon_release",
        "prePopulate",
        "<init>",
        "()V",
        "Companion",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase$Companion;

.field private static final DATABASE_NAME:Ljava/lang/String; = "chatDB"

.field private static volatile INSTANCE:Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;->Companion:Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;->INSTANCE:Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;)V
    .locals 0

    sput-object p0, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;->INSTANCE:Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;

    return-void
.end method


# virtual methods
.method public abstract attachmentDao()Lcom/helpscout/beacon/internal/data/local/db/AttachmentDao;
.end method

.method public abstract chatEnvelopeDao()Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDAO;
.end method

.method public abstract chatEventDao()Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao;
.end method

.method public final prePopulate$beacon_release(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;->userDao()Lcom/helpscout/beacon/internal/data/local/db/UserDao;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    sget-object v2, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;->INSTANCE:Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;->getSYSTEM_AUTHOR$beacon_release()Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;->getPLACEHOLDER_CUSTOMER_DB()Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/helpscout/beacon/internal/data/local/db/UserDao;->insert(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final reset(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->clearAllTables()V

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;->prePopulate$beacon_release(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public abstract unfurledMediaDao()Lcom/helpscout/beacon/internal/data/local/db/UnfurledMediaDao;
.end method

.method public abstract userDao()Lcom/helpscout/beacon/internal/data/local/db/UserDao;
.end method
