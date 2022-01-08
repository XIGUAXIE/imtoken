.class public final Lcom/helpscout/beacon/internal/presentation/ui/article/d$a;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/article/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/helpscout/beacon/internal/presentation/ui/article/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/helpscout/beacon/internal/presentation/ui/article/b;Lcom/helpscout/beacon/internal/presentation/ui/article/b;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/article/b;

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/article/b;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/d$a;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/b;Lcom/helpscout/beacon/internal/presentation/ui/article/b;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/article/b;

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/article/b;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/d$a;->b(Lcom/helpscout/beacon/internal/presentation/ui/article/b;Lcom/helpscout/beacon/internal/presentation/ui/article/b;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/helpscout/beacon/internal/presentation/ui/article/b;Lcom/helpscout/beacon/internal/presentation/ui/article/b;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/helpscout/beacon/internal/presentation/ui/article/b;Lcom/helpscout/beacon/internal/presentation/ui/article/b;)Ljava/lang/Object;
    .locals 2

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;

    instance-of v0, p2, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;

    if-nez v0, :cond_1

    move-object p2, v1

    :cond_1
    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;

    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;->c()Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;

    move-result-object p1

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;->c()Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/article/h$a;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d;->c()Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/h$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;)V

    :cond_3
    :goto_0
    return-object v1
.end method

.method public bridge synthetic getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/article/b;

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/article/b;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/d$a;->c(Lcom/helpscout/beacon/internal/presentation/ui/article/b;Lcom/helpscout/beacon/internal/presentation/ui/article/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
