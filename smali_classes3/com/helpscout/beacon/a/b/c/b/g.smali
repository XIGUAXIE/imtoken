.class public final Lcom/helpscout/beacon/a/b/c/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/internal/data/local/db/UserDao;

.field private final b:Lcom/helpscout/beacon/a/b/c/b/h;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/data/local/db/UserDao;Lcom/helpscout/beacon/a/b/c/b/h;)V
    .locals 1

    const-string v0, "userDao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/b/c/b/g;->a:Lcom/helpscout/beacon/internal/data/local/db/UserDao;

    iput-object p2, p0, Lcom/helpscout/beacon/a/b/c/b/g;->b:Lcom/helpscout/beacon/a/b/c/b/h;

    return-void
.end method


# virtual methods
.method public final a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/c/b/g;->a:Lcom/helpscout/beacon/internal/data/local/db/UserDao;

    invoke-interface {v0, p1, p2, p3}, Lcom/helpscout/beacon/internal/data/local/db/UserDao;->loadUserById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/b/c/b/g;->a:Lcom/helpscout/beacon/internal/data/local/db/UserDao;

    iget-object v1, p0, Lcom/helpscout/beacon/a/b/c/b/g;->b:Lcom/helpscout/beacon/a/b/c/b/h;

    invoke-virtual {v1, p1}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/helpscout/beacon/internal/data/local/db/UserDao;->insert(Lcom/helpscout/beacon/internal/data/local/db/UserDB;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
