.class public final Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;
.super Lcom/helpscout/beacon/internal/presentation/common/n/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/helpscout/beacon/internal/presentation/common/n/d<",
        "Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;",
        ">;"
    }
.end annotation


# instance fields
.field private final e:Lcom/helpscout/beacon/internal/presentation/common/d;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/helpscout/beacon/internal/presentation/common/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/helpscout/beacon/internal/presentation/common/d;",
            ")V"
        }
    .end annotation

    const-string v0, "itemClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/c;->a()Lcom/helpscout/beacon/internal/presentation/ui/conversations/c$a;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/helpscout/beacon/internal/presentation/common/n/d;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lkotlin/jvm/functions/Function1;)V

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;->e:Lcom/helpscout/beacon/internal/presentation/common/d;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/helpscout/beacon/internal/presentation/common/n/d$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/helpscout/beacon/internal/presentation/common/n/d$c<",
            "Lcom/helpscout/beacon/internal/domain/model/ConversationPreviewApi;",
            ">;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;

    sget v1, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_item_conversations:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026ersations, parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b;->e:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-direct {v0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/b$a;-><init>(Landroid/view/View;Lcom/helpscout/beacon/internal/presentation/common/d;)V

    return-object v0
.end method
