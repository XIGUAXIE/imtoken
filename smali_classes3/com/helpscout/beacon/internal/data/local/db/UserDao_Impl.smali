.class public final Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/internal/data/local/db/UserDao;


# instance fields
.field private final __authorTypeTypeConverter:Lcom/helpscout/beacon/internal/data/local/db/AuthorTypeTypeConverter;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfUserDB:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfUserDB:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/AuthorTypeTypeConverter;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/data/local/db/AuthorTypeTypeConverter;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;->__authorTypeTypeConverter:Lcom/helpscout/beacon/internal/data/local/db/AuthorTypeTypeConverter;

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$1;-><init>(Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;->__insertionAdapterOfUserDB:Landroidx/room/EntityInsertionAdapter;

    new-instance v0, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$2;-><init>(Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;->__deletionAdapterOfUserDB:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;)Lcom/helpscout/beacon/internal/data/local/db/AuthorTypeTypeConverter;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;->__authorTypeTypeConverter:Lcom/helpscout/beacon/internal/data/local/db/AuthorTypeTypeConverter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$200(Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;->__insertionAdapterOfUserDB:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;->__deletionAdapterOfUserDB:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method


# virtual methods
.method public delete(Lcom/helpscout/beacon/internal/data/local/db/UserDB;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$5;

    invoke-direct {v1, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$5;-><init>(Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;Lcom/helpscout/beacon/internal/data/local/db/UserDB;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/helpscout/beacon/internal/data/local/db/UserDB;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$3;

    invoke-direct {v1, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$3;-><init>(Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;Lcom/helpscout/beacon/internal/data/local/db/UserDB;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$4;

    invoke-direct {v1, p0, p1}, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$4;-><init>(Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public loadAllUsers(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "select * from user"

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v3, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$6;

    invoke-direct {v3, p0, v1}, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$6;-><init>(Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v2, v0, v3, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public loadUserById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "select * from user where id = ?"

    invoke-static {v1, v0}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance p2, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$7;

    invoke-direct {p2, p0, v1}, Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl$7;-><init>(Lcom/helpscout/beacon/internal/data/local/db/UserDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
