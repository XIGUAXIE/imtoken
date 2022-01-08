.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/l/g$a;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/l/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;",
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
.method public a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;)Z
    .locals 1

    const-string v0, "oldEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/g$a;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/g$a;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;)Z
    .locals 2

    const-string v0, "oldChatEventUi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newChatEventUi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
