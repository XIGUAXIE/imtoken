.class final Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText$onCommitContentListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\n\u001a\u00020\u00072\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0006\u001a\n \u0001*\u0004\u0018\u00010\u00050\u0005H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "Landroidx/core/view/inputmethod/InputContentInfoCompat;",
        "kotlin.jvm.PlatformType",
        "inputContentInfo",
        "",
        "flags",
        "Landroid/os/Bundle;",
        "<anonymous parameter 2>",
        "",
        "onCommitContent",
        "(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText$onCommitContentListener$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 2

    iget-object p3, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText$onCommitContentListener$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;

    invoke-static {p3, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->access$needsPermissionRequest(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;I)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->requestPermission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return p3

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText$onCommitContentListener$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;

    const-string v0, "inputContentInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string v1, "inputContentInfo.description"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->access$isUnsupportedMimeType(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;Landroid/content/ClipDescription;)Z

    move-result p2

    if-eqz p2, :cond_1

    return p3

    :cond_1
    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText$onCommitContentListener$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->getMediaListener()Lcom/helpscout/beacon/internal/presentation/common/widget/chat/KeyboardAttachmentListener;

    move-result-object p2

    if-nez p2, :cond_2

    return p3

    :cond_2
    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText$onCommitContentListener$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->getMediaListener()Lcom/helpscout/beacon/internal/presentation/common/widget/chat/KeyboardAttachmentListener;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    const-string p3, "inputContentInfo.contentUri"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/KeyboardAttachmentListener;->onMediaSelected(Landroid/net/Uri;)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
