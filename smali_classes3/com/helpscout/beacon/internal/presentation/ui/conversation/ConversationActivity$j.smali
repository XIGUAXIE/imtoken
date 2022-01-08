.class public final Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$j;
.super Lcom/helpscout/beacon/internal/presentation/common/n/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/LinearLayoutManager;",
            "Landroidx/recyclerview/widget/LinearLayoutManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$j;->h:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    invoke-direct {p0, p3}, Lcom/helpscout/beacon/internal/presentation/common/n/e;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    return-void
.end method


# virtual methods
.method public a(IILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity$j;->h:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;

    invoke-static {p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationActivity;I)V

    return-void
.end method
