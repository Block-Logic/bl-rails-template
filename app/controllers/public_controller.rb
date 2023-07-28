class PublicController < ApplicationController
  def index; end

  def cookie_policy; end

  def faq; end

  def terms_of_use; end

  def privacy_policy; end

  def privacy_policy_california; end

  def not_found
    render :not_found, status: :not_found, layout: 'error_page'
  end
end
