.class public final Lcom/helpscout/beacon/a/c/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/a/c/b/a$c;,
        Lcom/helpscout/beacon/a/c/b/a$b;,
        Lcom/helpscout/beacon/a/c/b/a$a;
    }
.end annotation


# static fields
.field private static final c:[Lcom/helpscout/beacon/a/c/b/a$c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final a:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/helpscout/beacon/a/c/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/helpscout/beacon/a/b/c/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/helpscout/beacon/a/c/b/a$c;

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$c;->CREATED:Lcom/helpscout/beacon/a/c/b/a$c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$c;->STARTED:Lcom/helpscout/beacon/a/c/b/a$c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$c;->AWAITING_AGENT:Lcom/helpscout/beacon/a/c/b/a$c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpscout/beacon/a/c/b/a;->c:[Lcom/helpscout/beacon/a/c/b/a$c;

    return-void
.end method

.method public constructor <init>(Lcom/helpscout/beacon/a/b/c/b/a;)V
    .locals 1

    const-string v0, "chatDatastore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/b/a;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/b/a;->a:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/a;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$c;->AWAITING_AGENT:Lcom/helpscout/beacon/a/c/b/a$c;

    invoke-interface {v0, v1}, Lcom/helpscout/beacon/a/b/c/b/a;->a(Lcom/helpscout/beacon/a/c/b/a$c;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/a;->a:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$a$a;->a:Lcom/helpscout/beacon/a/c/b/a$a$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/helpscout/beacon/a/c/b/a$b;)V
    .locals 2

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/a;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$c;->FINISHED:Lcom/helpscout/beacon/a/c/b/a$c;

    invoke-interface {v0, v1}, Lcom/helpscout/beacon/a/b/c/b/a;->a(Lcom/helpscout/beacon/a/c/b/a$c;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/a;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v0, p1}, Lcom/helpscout/beacon/a/b/c/b/a;->a(Lcom/helpscout/beacon/a/c/b/a$b;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/a;->a:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/helpscout/beacon/a/c/b/a$a$c;

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/a/c/b/a$a$c;-><init>(Lcom/helpscout/beacon/a/c/b/a$b;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)V
    .locals 2

    const-string v0, "agent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/a;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$c;->STARTED:Lcom/helpscout/beacon/a/c/b/a$c;

    invoke-interface {v0, v1}, Lcom/helpscout/beacon/a/b/c/b/a;->a(Lcom/helpscout/beacon/a/c/b/a$c;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/a;->a:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/helpscout/beacon/a/c/b/a$a$g;

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/a/c/b/a$a$g;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/a;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$c;->CREATED:Lcom/helpscout/beacon/a/c/b/a$c;

    invoke-interface {v0, v1}, Lcom/helpscout/beacon/a/b/c/b/a;->a(Lcom/helpscout/beacon/a/c/b/a$c;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/a;->a:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$a$b;->a:Lcom/helpscout/beacon/a/c/b/a$a$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/a;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v0}, Lcom/helpscout/beacon/a/b/c/b/a;->a()Lcom/helpscout/beacon/a/c/b/a$c;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$c;->STARTED:Lcom/helpscout/beacon/a/c/b/a$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d()Z
    .locals 2

    sget-object v0, Lcom/helpscout/beacon/a/c/b/a;->c:[Lcom/helpscout/beacon/a/c/b/a$c;

    iget-object v1, p0, Lcom/helpscout/beacon/a/c/b/a;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v1}, Lcom/helpscout/beacon/a/b/c/b/a;->a()Lcom/helpscout/beacon/a/c/b/a$c;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final e()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/helpscout/beacon/a/c/b/a$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/a;->a:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/a;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$c;->INITIAL:Lcom/helpscout/beacon/a/c/b/a$c;

    invoke-interface {v0, v1}, Lcom/helpscout/beacon/a/b/c/b/a;->a(Lcom/helpscout/beacon/a/c/b/a$c;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/a;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$b;->NOT_FINISHED:Lcom/helpscout/beacon/a/c/b/a$b;

    invoke-interface {v0, v1}, Lcom/helpscout/beacon/a/b/c/b/a;->a(Lcom/helpscout/beacon/a/c/b/a$b;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/a;->a:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$a$d;->a:Lcom/helpscout/beacon/a/c/b/a$a$d;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/a;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$c;->MISSING_EMAIL:Lcom/helpscout/beacon/a/c/b/a$c;

    invoke-interface {v0, v1}, Lcom/helpscout/beacon/a/b/c/b/a;->a(Lcom/helpscout/beacon/a/c/b/a$c;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/a;->a:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$a$e;->a:Lcom/helpscout/beacon/a/c/b/a$a$e;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/a;->b:Lcom/helpscout/beacon/a/b/c/b/a;

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$c;->IDLE:Lcom/helpscout/beacon/a/c/b/a$c;

    invoke-interface {v0, v1}, Lcom/helpscout/beacon/a/b/c/b/a;->a(Lcom/helpscout/beacon/a/c/b/a$c;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/b/a;->a:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/helpscout/beacon/a/c/b/a$a$f;->a:Lcom/helpscout/beacon/a/c/b/a$a$f;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
