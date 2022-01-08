.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000  2\u00020\u0001:\u0001 B\u001b\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R$\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;",
        "Landroidx/appcompat/widget/AppCompatEditText;",
        "Landroid/content/ClipDescription;",
        "description",
        "",
        "isUnsupportedMimeType",
        "(Landroid/content/ClipDescription;)Z",
        "",
        "flags",
        "needsPermissionRequest",
        "(I)Z",
        "Landroid/view/inputmethod/EditorInfo;",
        "editorInfo",
        "Landroid/view/inputmethod/InputConnection;",
        "onCreateInputConnection",
        "(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;",
        "Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;",
        "onCommitContentListener",
        "Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/chat/KeyboardAttachmentListener;",
        "mediaListener",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/chat/KeyboardAttachmentListener;",
        "getMediaListener",
        "()Lcom/helpscout/beacon/internal/presentation/common/widget/chat/KeyboardAttachmentListener;",
        "setMediaListener",
        "(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/KeyboardAttachmentListener;)V",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Companion",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText$Companion;

.field private static final supportedMimes:[Ljava/lang/String;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mediaListener:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/KeyboardAttachmentListener;

.field private final onCommitContentListener:Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->Companion:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText$Companion;

    const-string v0, "image/png"

    const-string v1, "image/gif"

    const-string v2, "image/jpeg"

    const-string v3, "image/webp"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->supportedMimes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText$onCommitContentListener$1;

    invoke-direct {p1, p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText$onCommitContentListener$1;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->onCommitContentListener:Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getSupportedMimes$cp()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->supportedMimes:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isUnsupportedMimeType(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;Landroid/content/ClipDescription;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->isUnsupportedMimeType(Landroid/content/ClipDescription;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$needsPermissionRequest(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->needsPermissionRequest(I)Z

    move-result p0

    return p0
.end method

.method private final isUnsupportedMimeType(Landroid/content/ClipDescription;)Z
    .locals 6

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->supportedMimes:[Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    return p1
.end method

.method private final needsPermissionRequest(I)Z
    .locals 4

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getMediaListener()Lcom/helpscout/beacon/internal/presentation/common/widget/chat/KeyboardAttachmentListener;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->mediaListener:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/KeyboardAttachmentListener;

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    const-string v0, "editorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->supportedMimes:[Ljava/lang/String;

    invoke-static {p1, v1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->onCommitContentListener:Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    invoke-static {v0, p1, v1}, Landroidx/core/view/inputmethod/InputConnectionCompat;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const-string v0, "InputConnectionCompat.cr\u2026ContentListener\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final setMediaListener(Lcom/helpscout/beacon/internal/presentation/common/widget/chat/KeyboardAttachmentListener;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/chat/ChatMessageEditText;->mediaListener:Lcom/helpscout/beacon/internal/presentation/common/widget/chat/KeyboardAttachmentListener;

    return-void
.end method
