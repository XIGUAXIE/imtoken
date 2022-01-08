.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;
.super Lcom/helpscout/common/mvi/MviReducer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/helpscout/common/mvi/MviReducer<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/f;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/h;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/g;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00e8\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u0018\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0001j\u0002`\u0005B\u00d3\u0001\u0012\u0008\u0010\u00b5\u0001\u001a\u00030\u00b4\u0001\u0012\u0006\u0010q\u001a\u00020o\u0012\u0006\u0010T\u001a\u00020R\u0012\u0008\u0010\u0083\u0001\u001a\u00030\u0080\u0001\u0012\u0006\u0010I\u001a\u00020F\u0012\u0006\u0010y\u001a\u00020v\u0012\u0006\u0010d\u001a\u00020a\u0012\u0006\u0010A\u001a\u00020>\u0012\u0008\u0010\u00b1\u0001\u001a\u00030\u00ae\u0001\u0012\u0006\u0010Q\u001a\u00020N\u0012\u0006\u0010h\u001a\u00020e\u0012\u0008\u0010\u0087\u0001\u001a\u00030\u0084\u0001\u0012\u0008\u0010\u00ad\u0001\u001a\u00030\u00aa\u0001\u0012\u0006\u0010E\u001a\u00020B\u0012\u0008\u0010\u008b\u0001\u001a\u00030\u0088\u0001\u0012\u0008\u0010\u009a\u0001\u001a\u00030\u0097\u0001\u0012\u0006\u0010u\u001a\u00020r\u0012\u0006\u0010\\\u001a\u00020Y\u0012\u0006\u0010X\u001a\u00020U\u0012\u0006\u0010M\u001a\u00020J\u0012\u0008\u0010\u00a2\u0001\u001a\u00030\u009f\u0001\u0012\u0008\u0010\u00a6\u0001\u001a\u00030\u00a3\u0001\u0012\u0006\u0010`\u001a\u00020]\u00a2\u0006\u0006\u0008\u00b6\u0001\u0010\u00b7\u0001J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000fJ\u001d\u0010\u000b\u001a\u00020\u00062\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0013J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0016J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0016J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0019J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0008J\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0016J%\u0010\u000b\u001a\u00020\u00062\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0002\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010#J\u0017\u0010%\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008%\u0010\u0016J\u0017\u0010\u001d\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0016J\u000f\u0010&\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008&\u0010\u0008J\u000f\u0010\'\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\'\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010(\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010)J\u000f\u0010*\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008*\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010,\u001a\u00020+H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010-J\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010(\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010)J\u000f\u0010\u001f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0008J\u000f\u0010.\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008.\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u00100\u001a\u00020/H\u0002\u00a2\u0006\u0004\u0008\u000b\u00101J\u0017\u00104\u001a\u00020\u00062\u0006\u00103\u001a\u000202H\u0016\u00a2\u0006\u0004\u00084\u00105J\u001b\u0010\u000b\u001a\u00020\u00062\u0006\u00107\u001a\u000206H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u00108J\u001f\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00022\u0006\u00109\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010:R\u0016\u0010=\u001a\u00020;8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010<R\u0016\u0010A\u001a\u00020>8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0016\u0010E\u001a\u00020B8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0016\u0010I\u001a\u00020F8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\u0016\u0010M\u001a\u00020J8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0016\u0010Q\u001a\u00020N8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0016\u0010T\u001a\u00020R8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010SR\u0016\u0010X\u001a\u00020U8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR\u0016\u0010\\\u001a\u00020Y8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u0016\u0010`\u001a\u00020]8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u0016\u0010d\u001a\u00020a8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008b\u0010cR\u0016\u0010h\u001a\u00020e8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR(\u0010n\u001a\u0008\u0012\u0004\u0012\u00020\r0i8\u0000@\u0001X\u0081\u0004\u00a2\u0006\u0012\n\u0004\u0008*\u0010j\u0012\u0004\u0008m\u0010\u0008\u001a\u0004\u0008k\u0010lR\u0016\u0010q\u001a\u00020o8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010pR\u0016\u0010u\u001a\u00020r8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008s\u0010tR\u0016\u0010y\u001a\u00020v8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR.\u0010\u007f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100z8\u0000@\u0001X\u0081\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010{\u0012\u0004\u0008~\u0010\u0008\u001a\u0004\u0008|\u0010}R\u001a\u0010\u0083\u0001\u001a\u00030\u0080\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0081\u0001\u0010\u0082\u0001R\u001a\u0010\u0087\u0001\u001a\u00030\u0084\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\u001a\u0010\u008b\u0001\u001a\u00030\u0088\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0001\u0010\u008a\u0001R\u0019\u0010\u008e\u0001\u001a\u00030\u008c\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u001f\u0010\u008d\u0001RW\u0010\u0096\u0001\u001a2\u0012-\u0012+\u0012\r\u0012\u000b \u0091\u0001*\u0004\u0018\u00010\r0\r \u0091\u0001*\u0014\u0012\r\u0012\u000b \u0091\u0001*\u0004\u0018\u00010\r0\r\u0018\u00010\u0090\u00010\u0090\u00010\u008f\u00018\u0006@\u0007X\u0087\u0004\u00a2\u0006\u0016\n\u0005\u0008.\u0010\u0092\u0001\u0012\u0005\u0008\u0095\u0001\u0010\u0008\u001a\u0006\u0008\u0093\u0001\u0010\u0094\u0001R\u001a\u0010\u009a\u0001\u001a\u00030\u0097\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0098\u0001\u0010\u0099\u0001R\u0019\u0010\u009d\u0001\u001a\u00020\u00148V@\u0016X\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u009b\u0001\u0010\u009c\u0001R\u0019\u0010\u009e\u0001\u001a\u00030\u008c\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u000b\u0010\u008d\u0001R\u001a\u0010\u00a2\u0001\u001a\u00030\u009f\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001R\u001a\u0010\u00a6\u0001\u001a\u00030\u00a3\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001R\u0019\u0010\u00a9\u0001\u001a\u00030\u00a7\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008%\u0010\u00a8\u0001R\u001a\u0010\u00ad\u0001\u001a\u00030\u00aa\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001R\u001a\u0010\u00b1\u0001\u001a\u00030\u00ae\u00018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0001\u0010\u00b0\u0001R\u0018\u0010\u00b3\u0001\u001a\u00020\u00038V@\u0016X\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008%\u0010\u00b2\u0001\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u00b8\u0001"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;",
        "Lcom/helpscout/common/mvi/MviReducer;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/f;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/h;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/g;",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatViewStateReducer;",
        "",
        "e",
        "()V",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/f$g;",
        "action",
        "a",
        "(Lcom/helpscout/beacon/internal/presentation/ui/chat/f$g;)V",
        "Lcom/helpscout/beacon/a/c/b/a$a;",
        "update",
        "(Lcom/helpscout/beacon/a/c/b/a$a;)V",
        "",
        "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
        "events",
        "(Ljava/util/List;)V",
        "",
        "message",
        "(Ljava/lang/String;)V",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;",
        "attachment",
        "(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V",
        "Landroid/net/Uri;",
        "fileUri",
        "(Landroid/net/Uri;)V",
        "d",
        "email",
        "b",
        "subject",
        "",
        "hasEnteredEmail",
        "(Ljava/lang/String;Z)V",
        "id",
        "c",
        "h",
        "i",
        "fromBack",
        "(Z)V",
        "g",
        "Lcom/helpscout/beacon/a/c/b/a$b;",
        "reason",
        "(Lcom/helpscout/beacon/a/c/b/a$b;)V",
        "f",
        "",
        "throwable",
        "(Ljava/lang/Throwable;)V",
        "Landroidx/lifecycle/LifecycleOwner;",
        "owner",
        "onStart",
        "(Landroidx/lifecycle/LifecycleOwner;)V",
        "Lcom/helpscout/beacon/a/c/e/g/k$a;",
        "result",
        "(Lcom/helpscout/beacon/a/c/e/g/k$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "previousState",
        "(Lcom/helpscout/beacon/internal/presentation/ui/chat/f;Lcom/helpscout/beacon/internal/presentation/ui/chat/h;)V",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "reducerScope",
        "Lcom/helpscout/beacon/a/c/e/g/e;",
        "n",
        "Lcom/helpscout/beacon/a/c/e/g/e;",
        "createChatUseCase",
        "Lcom/helpscout/beacon/a/c/e/g/f;",
        "t",
        "Lcom/helpscout/beacon/a/c/e/g/f;",
        "customerTypingUseCase",
        "Lcom/helpscout/beacon/a/b/c/b/c;",
        "k",
        "Lcom/helpscout/beacon/a/b/c/b/c;",
        "chatEventRepository",
        "Lcom/helpscout/beacon/a/c/e/g/c;",
        "z",
        "Lcom/helpscout/beacon/a/c/e/g/c;",
        "checkMaxAttachmentsUseCase",
        "Lcom/helpscout/beacon/a/c/e/g/q;",
        "p",
        "Lcom/helpscout/beacon/a/c/e/g/q;",
        "sendChatMessageUseCase",
        "Lcom/helpscout/beacon/BeaconDatastore;",
        "Lcom/helpscout/beacon/BeaconDatastore;",
        "beaconDatastore",
        "Lcom/helpscout/beacon/a/c/e/f/a;",
        "y",
        "Lcom/helpscout/beacon/a/c/e/f/a;",
        "downloadAttachmentUseCase",
        "Lcom/helpscout/beacon/internal/presentation/common/a;",
        "x",
        "Lcom/helpscout/beacon/internal/presentation/common/a;",
        "attachmentHelper",
        "Lcom/helpscout/beacon/internal/presentation/common/d;",
        "C",
        "Lcom/helpscout/beacon/internal/presentation/common/d;",
        "stringResolver",
        "Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;",
        "m",
        "Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;",
        "chatEventSynchronizerService",
        "Lcom/helpscout/beacon/a/c/e/g/p;",
        "q",
        "Lcom/helpscout/beacon/a/c/e/g/p;",
        "sendAttachmentUseCase",
        "Lcom/helpscout/common/lifecycle/EventObserver;",
        "Lcom/helpscout/common/lifecycle/EventObserver;",
        "getChatStateObserver$beacon_release",
        "()Lcom/helpscout/common/lifecycle/EventObserver;",
        "getChatStateObserver$beacon_release$annotations",
        "chatStateObserver",
        "Lcom/helpscout/beacon/a/c/b/a;",
        "Lcom/helpscout/beacon/a/c/b/a;",
        "chatState",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;",
        "w",
        "Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;",
        "chatErrorHandler",
        "Lcom/helpscout/beacon/a/b/c/b/h;",
        "l",
        "Lcom/helpscout/beacon/a/b/c/b/h;",
        "mapper",
        "Landroidx/lifecycle/Observer;",
        "Landroidx/lifecycle/Observer;",
        "getChatEventObserver$beacon_release",
        "()Landroidx/lifecycle/Observer;",
        "getChatEventObserver$beacon_release$annotations",
        "chatEventObserver",
        "Lcom/helpscout/beacon/a/c/b/b;",
        "j",
        "Lcom/helpscout/beacon/a/c/b/b;",
        "helpBot",
        "Lcom/helpscout/beacon/a/c/e/g/n;",
        "r",
        "Lcom/helpscout/beacon/a/c/e/g/n;",
        "removeChatDataUseCase",
        "Lcom/helpscout/beacon/a/c/e/g/h;",
        "u",
        "Lcom/helpscout/beacon/a/c/e/g/h;",
        "helpBotTypingUseCase",
        "Lkotlin/coroutines/CoroutineContext;",
        "Lkotlin/coroutines/CoroutineContext;",
        "ioContext",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/helpscout/common/lifecycle/Event;",
        "kotlin.jvm.PlatformType",
        "Landroidx/lifecycle/LiveData;",
        "getChatStateUpdateEvents",
        "()Landroidx/lifecycle/LiveData;",
        "getChatStateUpdateEvents$annotations",
        "chatStateUpdateEvents",
        "Lcom/helpscout/beacon/a/c/e/g/b;",
        "v",
        "Lcom/helpscout/beacon/a/c/e/g/b;",
        "chatValidateEmailUseCase",
        "getReducerName",
        "()Ljava/lang/String;",
        "reducerName",
        "uiContext",
        "Lcom/helpscout/beacon/a/c/e/g/d;",
        "A",
        "Lcom/helpscout/beacon/a/c/e/g/d;",
        "clearChatNotificationUseCase",
        "Lcom/helpscout/beacon/a/c/e/g/o;",
        "B",
        "Lcom/helpscout/beacon/a/c/e/g/o;",
        "saveLineItemUseCase",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "exceptionHandler",
        "Lcom/helpscout/beacon/a/c/e/g/u;",
        "s",
        "Lcom/helpscout/beacon/a/c/e/g/u;",
        "userEndsChatUseCase",
        "Lcom/helpscout/beacon/a/c/e/g/k;",
        "o",
        "Lcom/helpscout/beacon/a/c/e/g/k;",
        "initChatUseCase",
        "()Lcom/helpscout/beacon/internal/presentation/ui/chat/h;",
        "initialState",
        "Lcom/helpscout/common/mvi/MviCoroutineConfig;",
        "coroutineConfig",
        "<init>",
        "(Lcom/helpscout/common/mvi/MviCoroutineConfig;Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/c/b/b;Lcom/helpscout/beacon/a/b/c/b/c;Lcom/helpscout/beacon/a/b/c/b/h;Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;Lcom/helpscout/beacon/a/c/e/g/e;Lcom/helpscout/beacon/a/c/e/g/k;Lcom/helpscout/beacon/a/c/e/g/q;Lcom/helpscout/beacon/a/c/e/g/p;Lcom/helpscout/beacon/a/c/e/g/n;Lcom/helpscout/beacon/a/c/e/g/u;Lcom/helpscout/beacon/a/c/e/g/f;Lcom/helpscout/beacon/a/c/e/g/h;Lcom/helpscout/beacon/a/c/e/g/b;Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;Lcom/helpscout/beacon/internal/presentation/common/a;Lcom/helpscout/beacon/a/c/e/f/a;Lcom/helpscout/beacon/a/c/e/g/c;Lcom/helpscout/beacon/a/c/e/g/d;Lcom/helpscout/beacon/a/c/e/g/o;Lcom/helpscout/beacon/internal/presentation/common/d;)V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final A:Lcom/helpscout/beacon/a/c/e/g/d;

.field private final B:Lcom/helpscout/beacon/a/c/e/g/o;

.field private final C:Lcom/helpscout/beacon/internal/presentation/common/d;

.field private final a:Lkotlin/coroutines/CoroutineContext;

.field private final b:Lkotlin/coroutines/CoroutineContext;

.field private final c:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field private final d:Lkotlinx/coroutines/CoroutineScope;

.field private final e:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/helpscout/common/lifecycle/Event<",
            "Lcom/helpscout/beacon/a/c/b/a$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/helpscout/common/lifecycle/EventObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/helpscout/common/lifecycle/EventObserver<",
            "Lcom/helpscout/beacon/a/c/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/helpscout/beacon/a/c/b/a;

.field private final i:Lcom/helpscout/beacon/BeaconDatastore;

.field private final j:Lcom/helpscout/beacon/a/c/b/b;

.field private final k:Lcom/helpscout/beacon/a/b/c/b/c;

.field private final l:Lcom/helpscout/beacon/a/b/c/b/h;

.field private final m:Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;

.field private final n:Lcom/helpscout/beacon/a/c/e/g/e;

.field private final o:Lcom/helpscout/beacon/a/c/e/g/k;

.field private final p:Lcom/helpscout/beacon/a/c/e/g/q;

.field private final q:Lcom/helpscout/beacon/a/c/e/g/p;

.field private final r:Lcom/helpscout/beacon/a/c/e/g/n;

.field private final s:Lcom/helpscout/beacon/a/c/e/g/u;

.field private final t:Lcom/helpscout/beacon/a/c/e/g/f;

.field private final u:Lcom/helpscout/beacon/a/c/e/g/h;

.field private final v:Lcom/helpscout/beacon/a/c/e/g/b;

.field private final w:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;

.field private final x:Lcom/helpscout/beacon/internal/presentation/common/a;

.field private final y:Lcom/helpscout/beacon/a/c/e/f/a;

.field private final z:Lcom/helpscout/beacon/a/c/e/g/c;


# direct methods
.method public constructor <init>(Lcom/helpscout/common/mvi/MviCoroutineConfig;Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/c/b/b;Lcom/helpscout/beacon/a/b/c/b/c;Lcom/helpscout/beacon/a/b/c/b/h;Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;Lcom/helpscout/beacon/a/c/e/g/e;Lcom/helpscout/beacon/a/c/e/g/k;Lcom/helpscout/beacon/a/c/e/g/q;Lcom/helpscout/beacon/a/c/e/g/p;Lcom/helpscout/beacon/a/c/e/g/n;Lcom/helpscout/beacon/a/c/e/g/u;Lcom/helpscout/beacon/a/c/e/g/f;Lcom/helpscout/beacon/a/c/e/g/h;Lcom/helpscout/beacon/a/c/e/g/b;Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;Lcom/helpscout/beacon/internal/presentation/common/a;Lcom/helpscout/beacon/a/c/e/f/a;Lcom/helpscout/beacon/a/c/e/g/c;Lcom/helpscout/beacon/a/c/e/g/d;Lcom/helpscout/beacon/a/c/e/g/o;Lcom/helpscout/beacon/internal/presentation/common/d;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "coroutineConfig"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatState"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beaconDatastore"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helpBot"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatEventRepository"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatEventSynchronizerService"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createChatUseCase"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initChatUseCase"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendChatMessageUseCase"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendAttachmentUseCase"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeChatDataUseCase"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userEndsChatUseCase"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customerTypingUseCase"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helpBotTypingUseCase"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatValidateEmailUseCase"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatErrorHandler"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentHelper"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadAttachmentUseCase"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkMaxAttachmentsUseCase"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clearChatNotificationUseCase"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saveLineItemUseCase"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringResolver"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v15, 0x2

    move-object/from16 v14, p0

    invoke-direct {v14, v1, v0, v15, v0}, Lcom/helpscout/common/mvi/MviReducer;-><init>(Lcom/helpscout/common/mvi/MviCoroutineConfig;Lcom/helpscout/common/mvi/MviViewStateStore;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v14, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->h:Lcom/helpscout/beacon/a/c/b/a;

    iput-object v3, v14, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->i:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object v4, v14, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->j:Lcom/helpscout/beacon/a/c/b/b;

    iput-object v5, v14, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->k:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object v6, v14, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->l:Lcom/helpscout/beacon/a/b/c/b/h;

    iput-object v7, v14, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->m:Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;

    iput-object v8, v14, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->n:Lcom/helpscout/beacon/a/c/e/g/e;

    iput-object v9, v14, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->o:Lcom/helpscout/beacon/a/c/e/g/k;

    iput-object v10, v14, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->p:Lcom/helpscout/beacon/a/c/e/g/q;

    iput-object v11, v14, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->q:Lcom/helpscout/beacon/a/c/e/g/p;

    iput-object v12, v14, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->r:Lcom/helpscout/beacon/a/c/e/g/n;

    iput-object v13, v14, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->s:Lcom/helpscout/beacon/a/c/e/g/u;

    move-object/from16 v3, p14

    move-object v0, v14

    iput-object v3, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->t:Lcom/helpscout/beacon/a/c/e/g/f;

    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->u:Lcom/helpscout/beacon/a/c/e/g/h;

    move-object/from16 v3, p16

    iput-object v3, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->v:Lcom/helpscout/beacon/a/c/e/g/b;

    move-object/from16 v3, p17

    move-object/from16 v4, p18

    iput-object v3, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->w:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;

    iput-object v4, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->x:Lcom/helpscout/beacon/internal/presentation/common/a;

    move-object/from16 v3, p19

    move-object/from16 v4, p20

    iput-object v3, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->y:Lcom/helpscout/beacon/a/c/e/f/a;

    iput-object v4, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->z:Lcom/helpscout/beacon/a/c/e/g/c;

    move-object/from16 v3, p21

    move-object/from16 v4, p22

    iput-object v3, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->A:Lcom/helpscout/beacon/a/c/e/g/d;

    iput-object v4, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->B:Lcom/helpscout/beacon/a/c/e/g/o;

    move-object/from16 v3, p23

    iput-object v3, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->C:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/common/mvi/MviCoroutineConfig;->getDispatcherProvider()Lcom/helpscout/common/coroutines/DispatcherProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/helpscout/common/coroutines/DispatcherProvider;->main()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    iput-object v3, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a:Lkotlin/coroutines/CoroutineContext;

    invoke-virtual/range {p1 .. p1}, Lcom/helpscout/common/mvi/MviCoroutineConfig;->getDispatcherProvider()Lcom/helpscout/common/coroutines/DispatcherProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpscout/common/coroutines/DispatcherProvider;->io()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    iput-object v1, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$a;

    sget-object v3, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {v1, v3, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$a;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)V

    iput-object v1, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->c:Lkotlinx/coroutines/CoroutineExceptionHandler;

    sget-object v3, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {v3, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iput-object v1, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$b;

    invoke-direct {v1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)V

    iput-object v1, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->e:Landroidx/lifecycle/Observer;

    invoke-virtual/range {p2 .. p2}, Lcom/helpscout/beacon/a/c/b/a;->e()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-static {v1}, Landroidx/lifecycle/Transformations;->distinctUntilChanged(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    const-string v2, "Transformations.distinctUntilChanged(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$d;

    invoke-static {v1, v2}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    const-string v2, "Transformations.map(chat\u2026lChanged()) { Event(it) }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->f:Landroidx/lifecycle/LiveData;

    new-instance v1, Lcom/helpscout/common/lifecycle/EventObserver;

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$c;

    invoke-direct {v2, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$c;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)V

    invoke-direct {v1, v2}, Lcom/helpscout/common/lifecycle/EventObserver;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v1, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->g:Lcom/helpscout/common/lifecycle/EventObserver;

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/internal/presentation/common/a;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->x:Lcom/helpscout/beacon/internal/presentation/common/a;

    return-object p0
.end method

.method private final a(Landroid/net/Uri;)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/a/c/b/a$a;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChatStateUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v2, v1, Lcom/helpscout/beacon/a/c/b/a$a$d;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v5, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$f;

    invoke-direct {v8, v0, v4}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$f;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_3

    :cond_0
    instance-of v2, v1, Lcom/helpscout/beacon/a/c/b/a$a$e;

    if-eqz v2, :cond_1

    iget-object v5, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$g;

    invoke-direct {v8, v0, v4}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$g;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/helpscout/beacon/a/c/b/a$a$b;

    if-eqz v2, :cond_2

    iget-object v5, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$h;

    invoke-direct {v8, v0, v4}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$h;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    iget-object v1, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->m:Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;->start()V

    goto/16 :goto_3

    :cond_2
    instance-of v2, v1, Lcom/helpscout/beacon/a/c/b/a$a$a;

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->c()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->AWAITING_AGENT:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->AGENT_LEFT:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    :goto_1
    move-object v7, v1

    invoke-virtual/range {p0 .. p0}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x196

    goto :goto_2

    :cond_4
    instance-of v2, v1, Lcom/helpscout/beacon/a/c/b/a$a$g;

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    sget-object v7, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->AGENT_ASSIGNED:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    iget-object v2, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->l:Lcom/helpscout/beacon/a/b/c/b/h;

    check-cast v1, Lcom/helpscout/beacon/a/c/b/a$a$g;

    invoke-virtual {v1}, Lcom/helpscout/beacon/a/c/b/a$a$g;->a()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/helpscout/beacon/a/b/c/b/h;->b(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object v10

    iget-object v1, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->i:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v1}, Lcom/helpscout/beacon/BeaconDatastore;->getContactFormOptions()Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/core/model/ContactFormConfigApi;->getAllowAttachments()Z

    move-result v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1a6

    :goto_2
    const/16 v17, 0x0

    invoke-static/range {v6 .. v17}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;Lcom/helpscout/beacon/internal/presentation/ui/chat/i;Ljava/util/List;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZZLcom/helpscout/beacon/internal/presentation/ui/chat/h$a;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    move-result-object v1

    invoke-static {v0, v1, v3, v5, v4}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->postState$default(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;ZILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    instance-of v2, v1, Lcom/helpscout/beacon/a/c/b/a$a$c;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->m:Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;

    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;->stop()V

    check-cast v1, Lcom/helpscout/beacon/a/c/b/a$a$c;

    invoke-virtual {v1}, Lcom/helpscout/beacon/a/c/b/a$a$c;->a()Lcom/helpscout/beacon/a/c/b/a$b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Lcom/helpscout/beacon/a/c/b/a$b;)V

    goto :goto_3

    :cond_6
    instance-of v1, v1, Lcom/helpscout/beacon/a/c/b/a$a$f;

    if-eqz v1, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->f()V

    :cond_7
    :goto_3
    return-void
.end method

.method private final a(Lcom/helpscout/beacon/a/c/b/a$b;)V
    .locals 10

    invoke-virtual {p0}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->c()Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$o;

    invoke-direct {v0, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$o;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)V

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v4, Lcom/helpscout/beacon/internal/presentation/ui/chat/d;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v4, p1

    const/4 v4, 0x1

    if-eq p1, v4, :cond_5

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    const/4 v4, 0x3

    if-eq p1, v4, :cond_3

    const/4 v4, 0x4

    if-eq p1, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->c()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v2

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->C:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->f1()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_1
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a;

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$b;

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$a;

    :goto_2
    iput-object p1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v4, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v5, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;

    invoke-direct {v7, p0, v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_6
    :goto_3
    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lcom/helpscout/beacon/a/c/b/a$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Lcom/helpscout/beacon/a/c/b/a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/f$g;)V
    .locals 1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$g;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$k;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/g$k;

    invoke-virtual {p0, p1}, Lcom/helpscout/common/mvi/MviReducer;->postEvent(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->c()Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$p;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$p;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->h:Lcom/helpscout/beacon/a/c/b/a;

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/c/b/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private final a(Ljava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final a(Ljava/lang/Throwable;)V
    .locals 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatReducer unrecoverable exception caught: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    sget-object v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->ENDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    new-instance v11, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$d;

    invoke-direct {v11, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$d;-><init>(Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v12, 0xfe

    const/4 v13, 0x0

    invoke-static/range {v2 .. v13}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;Lcom/helpscout/beacon/internal/presentation/ui/chat/i;Ljava/util/List;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZZLcom/helpscout/beacon/internal/presentation/ui/chat/h$a;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v0, v2}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->postState$default(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method private final a(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    sget-object v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->MESSAGE:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->l:Lcom/helpscout/beacon/a/b/c/b/h;

    invoke-static {p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/e;->a(Ljava/util/List;Lcom/helpscout/beacon/a/b/c/b/h;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1fc

    const/4 v13, 0x0

    invoke-static/range {v2 .. v13}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;Lcom/helpscout/beacon/internal/presentation/ui/chat/i;Ljava/util/List;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZZLcom/helpscout/beacon/internal/presentation/ui/chat/h$a;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->postState$default(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final a(Z)V
    .locals 14

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->h:Lcom/helpscout/beacon/a/c/b/a;

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/c/b/a;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->f()V

    invoke-virtual {p0}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    sget-object v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->ENDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    new-instance v11, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$e;

    invoke-direct {v11, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$e;-><init>(Z)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v12, 0xfe

    const/4 v13, 0x0

    invoke-static/range {v2 .. v13}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;Lcom/helpscout/beacon/internal/presentation/ui/chat/i;Ljava/util/List;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZZLcom/helpscout/beacon/internal/presentation/ui/chat/h$a;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v2, v1}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->postState$default(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;ZILjava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v4, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$i;

    invoke-direct {v6, p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$i;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/BeaconDatastore;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->i:Lcom/helpscout/beacon/BeaconDatastore;

    return-object p0
.end method

.method private final b()V
    .locals 13

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->f()V

    invoke-virtual {p0}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    sget-object v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->ENDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1fe

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;Lcom/helpscout/beacon/internal/presentation/ui/chat/i;Ljava/util/List;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZZLcom/helpscout/beacon/internal/presentation/ui/chat/h$a;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->postState$default(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$j;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$j;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->h:Lcom/helpscout/beacon/a/c/b/a;

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/c/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$j;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/g$j;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/helpscout/common/mvi/MviReducer;->postEvent(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$h;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/g$h;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Z)V

    :goto_1
    return-void
.end method

.method public static final synthetic c(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->w:Lcom/helpscout/beacon/internal/data/remote/chat/ChatErrorHandler;

    return-object p0
.end method

.method private final c(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic d(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/b/c/b/c;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->k:Lcom/helpscout/beacon/a/b/c/b/c;

    return-object p0
.end method

.method private final d()V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$k;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$k;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final d(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$t;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$t;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic e(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/b/a;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->h:Lcom/helpscout/beacon/a/c/b/a;

    return-object p0
.end method

.method private final e()V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final e(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$v;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$v;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$f;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/g$f;

    invoke-virtual {p0, p1}, Lcom/helpscout/common/mvi/MviReducer;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic f(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/b;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->v:Lcom/helpscout/beacon/a/c/e/g/b;

    return-object p0
.end method

.method private final f()V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$r;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$r;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic g(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/c;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->z:Lcom/helpscout/beacon/a/c/e/g/c;

    return-object p0
.end method

.method private final g()V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$u;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$u;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic h(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/e;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->n:Lcom/helpscout/beacon/a/c/e/g/e;

    return-object p0
.end method

.method private final h()V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$w;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$w;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic i(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/f;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->t:Lcom/helpscout/beacon/a/c/e/g/f;

    return-object p0
.end method

.method private final i()V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$x;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$x;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic j(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/f/a;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->y:Lcom/helpscout/beacon/a/c/e/f/a;

    return-object p0
.end method

.method public static final synthetic k(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/b/b;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->j:Lcom/helpscout/beacon/a/c/b/b;

    return-object p0
.end method

.method public static final synthetic l(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/h;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->u:Lcom/helpscout/beacon/a/c/e/g/h;

    return-object p0
.end method

.method public static final synthetic m(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/k;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->o:Lcom/helpscout/beacon/a/c/e/g/k;

    return-object p0
.end method

.method public static final synthetic n(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/n;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->r:Lcom/helpscout/beacon/a/c/e/g/n;

    return-object p0
.end method

.method public static final synthetic o(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/o;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->B:Lcom/helpscout/beacon/a/c/e/g/o;

    return-object p0
.end method

.method public static final synthetic p(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/p;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->q:Lcom/helpscout/beacon/a/c/e/g/p;

    return-object p0
.end method

.method public static final synthetic q(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/q;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->p:Lcom/helpscout/beacon/a/c/e/g/q;

    return-object p0
.end method

.method public static final synthetic r(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/internal/presentation/common/d;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->C:Lcom/helpscout/beacon/internal/presentation/common/d;

    return-object p0
.end method

.method public static final synthetic s(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public static final synthetic t(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/u;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->s:Lcom/helpscout/beacon/a/c/e/g/u;

    return-object p0
.end method

.method public static final synthetic u(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->f()V

    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/helpscout/beacon/a/c/e/g/k$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/a/c/e/g/k$a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a:Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$q;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$q;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lcom/helpscout/beacon/a/c/e/g/k$a;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/ui/chat/f;Lcom/helpscout/beacon/internal/presentation/ui/chat/h;)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ChatViewAction: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2, v1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$g;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$g;

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/f$g;)V

    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_1

    :cond_0
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$c;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$c;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$c;->a()Lcom/helpscout/beacon/a/c/b/a$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Lcom/helpscout/beacon/a/c/b/a$a;)V

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$a;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$a;->a()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$m;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$m;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$m;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$l;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$l;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$l;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$i;

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d()V

    goto :goto_0

    :cond_5
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$h;

    if-eqz p2, :cond_6

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$h;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$h;->a()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    goto :goto_0

    :cond_6
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$n;

    if-eqz p2, :cond_7

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$n;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$n;->a()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Landroid/net/Uri;)V

    goto :goto_0

    :cond_7
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$j;

    if-eqz p2, :cond_8

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$j;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$j;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$k;

    if-eqz p2, :cond_9

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$k;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$k;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$o;

    if-eqz p2, :cond_a

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->h()V

    goto/16 :goto_0

    :cond_a
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$p;

    if-eqz p2, :cond_b

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->i()V

    goto/16 :goto_0

    :cond_b
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$d;

    if-eqz p2, :cond_c

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Z)V

    goto/16 :goto_0

    :cond_c
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$f;

    if-eqz p2, :cond_d

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->g()V

    goto/16 :goto_0

    :cond_d
    instance-of p2, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$e;

    if-eqz p2, :cond_e

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$e;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$e;->a()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b(Z)V

    goto/16 :goto_0

    :cond_e
    instance-of p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f$b;

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b()V

    goto/16 :goto_0

    :goto_1
    invoke-static {p1}, Lcom/helpscout/beacon/a/c/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_f
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public c()Lcom/helpscout/beacon/internal/presentation/ui/chat/h;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->l:Lcom/helpscout/beacon/internal/presentation/ui/chat/h$b;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$b;->a()Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInitialState()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->c()Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    move-result-object v0

    return-object v0
.end method

.method public getReducerName()Ljava/lang/String;
    .locals 1

    const-string v0, "ChatReducer"

    return-object v0
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->k:Lcom/helpscout/beacon/a/b/c/b/c;

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/b/c/b/c;->a()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->e:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->f:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->g:Lcom/helpscout/common/lifecycle/EventObserver;

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->h:Lcom/helpscout/beacon/a/c/b/a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/c/b/a;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->m:Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/ChatEventSynchronizerService;->start()V

    :cond_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->A:Lcom/helpscout/beacon/a/c/e/g/d;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/c/e/g/d;->a()V

    return-void
.end method

.method public bridge synthetic reduce(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/f;

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/f;Lcom/helpscout/beacon/internal/presentation/ui/chat/h;)V

    return-void
.end method
