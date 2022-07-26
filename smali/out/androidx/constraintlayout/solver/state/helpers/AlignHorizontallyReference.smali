.class public Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;
.super Landroidx/constraintlayout/solver/state/HelperReference;
.source "AlignHorizontallyReference.java"


# instance fields
.field private mBias:F

.field private mEndToEnd:Ljava/lang/Object;

.field private mEndToStart:Ljava/lang/Object;

.field private mStartToEnd:Ljava/lang/Object;

.field private mStartToStart:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/state/State;)V
    .registers 3
    .param p1, "state"    # Landroidx/constraintlayout/solver/state/State;

    .line 33
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/solver/state/HelperReference;-><init>(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/state/State$Helper;)V

    .line 25
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mBias:F

    .line 34
    return-void
.end method


# virtual methods
.method public apply()V
    .registers 6

    .line 37
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 38
    .local v1, "key":Ljava/lang/Object;
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mState:Landroidx/constraintlayout/solver/state/State;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v2

    .line 39
    .local v2, "reference":Landroidx/constraintlayout/solver/state/ConstraintReference;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->clearHorizontal()Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 40
    iget-object v3, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mStartToStart:Ljava/lang/Object;

    if-eqz v3, :cond_21

    .line 41
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_2e

    .line 42
    :cond_21
    iget-object v3, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mStartToEnd:Ljava/lang/Object;

    if-eqz v3, :cond_29

    .line 43
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/state/ConstraintReference;->startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_2e

    .line 45
    :cond_29
    sget-object v3, Landroidx/constraintlayout/solver/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 47
    :goto_2e
    iget-object v3, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mEndToStart:Ljava/lang/Object;

    if-eqz v3, :cond_36

    .line 48
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/state/ConstraintReference;->endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_43

    .line 49
    :cond_36
    iget-object v3, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mEndToEnd:Ljava/lang/Object;

    if-eqz v3, :cond_3e

    .line 50
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_43

    .line 52
    :cond_3e
    sget-object v3, Landroidx/constraintlayout/solver/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 54
    :goto_43
    iget v3, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mBias:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_4e

    .line 55
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/state/ConstraintReference;->horizontalBias(F)Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 57
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroidx/constraintlayout/solver/state/ConstraintReference;
    :cond_4e
    goto :goto_6

    .line 58
    :cond_4f
    return-void
.end method

.method public bias(F)V
    .registers 2
    .param p1, "bias"    # F

    .line 66
    iput p1, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mBias:F

    .line 67
    return-void
.end method

.method public endToEnd(Ljava/lang/Object;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mEndToEnd:Ljava/lang/Object;

    return-void
.end method

.method public endToStart(Ljava/lang/Object;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mEndToStart:Ljava/lang/Object;

    return-void
.end method

.method public startToEnd(Ljava/lang/Object;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mStartToEnd:Ljava/lang/Object;

    return-void
.end method

.method public startToStart(Ljava/lang/Object;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mStartToStart:Ljava/lang/Object;

    return-void
.end method
