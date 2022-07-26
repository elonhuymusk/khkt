.class public Lorg/tensorflow/lite/support/common/SequentialProcessor;
.super Ljava/lang/Object;
.source "SequentialProcessor.java"

# interfaces
.implements Lorg/tensorflow/lite/support/common/Processor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/tensorflow/lite/support/common/Processor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final operatorIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final operatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/support/common/Operator<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/tensorflow/lite/support/common/SequentialProcessor;, "Lorg/tensorflow/lite/support/common/SequentialProcessor<TT;>;"
    .local p1, "builder":Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;, "Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->access$000(Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor;->operatorList:Ljava/util/List;

    .line 45
    invoke-static {p1}, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->access$100(Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor;->operatorIndex:Ljava/util/Map;

    .line 46
    return-void
.end method


# virtual methods
.method public process(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/tensorflow/lite/support/common/SequentialProcessor;, "Lorg/tensorflow/lite/support/common/SequentialProcessor<TT;>;"
    .local p1, "x":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor;->operatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/tensorflow/lite/support/common/Operator;

    .line 51
    .local v1, "op":Lorg/tensorflow/lite/support/common/Operator;, "Lorg/tensorflow/lite/support/common/Operator<TT;>;"
    invoke-interface {v1, p1}, Lorg/tensorflow/lite/support/common/Operator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 52
    .end local v1    # "op":Lorg/tensorflow/lite/support/common/Operator;, "Lorg/tensorflow/lite/support/common/Operator<TT;>;"
    goto :goto_6

    .line 53
    :cond_17
    return-object p1
.end method
