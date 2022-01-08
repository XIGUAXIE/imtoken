.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$k;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$k;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/helpscout/beacon/internal/presentation/ui/chat/c;
    .locals 3

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$k;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->chatMotionLayout:I

    invoke-virtual {v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    const-string v2, "chatMotionLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/c;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity$k;->a()Lcom/helpscout/beacon/internal/presentation/ui/chat/c;

    move-result-object v0

    return-object v0
.end method
