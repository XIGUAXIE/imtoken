.class public final Lcom/helpscout/beacon/internal/presentation/ui/conversations/c$a;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversations/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;",
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
.method public a(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)Z
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

    check-cast p1, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;

    check-cast p2, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/c$a;->a(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;

    check-cast p2, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/c$a;->b(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
