.class public final synthetic Lio/sentry/react/-$$Lambda$RNSentryModule$xl5vKdtKzXDXwsSDwsgHA122ZfE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field private final synthetic f$0:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/react/-$$Lambda$RNSentryModule$xl5vKdtKzXDXwsSDwsgHA122ZfE;->f$0:Lcom/facebook/react/bridge/ReadableMap;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/Scope;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/react/-$$Lambda$RNSentryModule$xl5vKdtKzXDXwsSDwsgHA122ZfE;->f$0:Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {v0, p1}, Lio/sentry/react/RNSentryModule;->lambda$addBreadcrumb$3(Lcom/facebook/react/bridge/ReadableMap;Lio/sentry/Scope;)V

    return-void
.end method
