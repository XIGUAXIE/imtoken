.class public interface abstract annotation Lorg/apache/commons/digester/annotations/rules/SetNext;
.super Ljava/lang/Object;
.source "SetNext.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/apache/commons/digester/annotations/rules/SetNext;
        value = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lorg/apache/commons/digester/annotations/DigesterRule;
    handledBy = Lorg/apache/commons/digester/annotations/handlers/MethodHandler;
    providedBy = Lorg/apache/commons/digester/annotations/providers/SetNextRuleProvider;
    reflectsRule = Lorg/apache/commons/digester/SetNextRule;
.end annotation


# virtual methods
.method public abstract value()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method
