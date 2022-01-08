.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/l/q;
.super Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j;-><init>(Landroid/view/View;)V

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemUnfurledTitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.chatItemUnfurledTitle)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/q;->c:Landroid/widget/TextView;

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemUnfurledDescription:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.c\u2026tItemUnfurledDescription)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/q;->d:Landroid/widget/TextView;

    sget v0, Lcom/helpscout/beacon/ui/R$id;->chatItemRootContainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.chatItemRootContainer)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/q;->e:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/f;)V
    .locals 9

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/q;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/f;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/q;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/q;->e:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->g()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/j;Landroid/view/ViewGroup;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method
