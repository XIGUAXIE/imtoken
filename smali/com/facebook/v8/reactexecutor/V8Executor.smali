.class public Lcom/facebook/v8/reactexecutor/V8Executor;
.super Lcom/facebook/react/bridge/JavaScriptExecutor;
.source "V8Executor.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "v8executor"

    .line 16
    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-static {p1}, Lcom/facebook/v8/reactexecutor/V8Executor;->initHybrid(Ljava/lang/String;)Lcom/facebook/jni/HybridData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/JavaScriptExecutor;-><init>(Lcom/facebook/jni/HybridData;)V

    return-void
.end method

.method private static native initHybrid(Ljava/lang/String;)Lcom/facebook/jni/HybridData;
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "V8Executor"

    return-object v0
.end method
